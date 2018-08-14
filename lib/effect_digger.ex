defmodule EffectDigger do
  alias EffectDigger.Repo
  require EffectDigger.DogmaConst, as: DC
  import Ecto.Query, only: [from: 2]

  @doc "Select effects of a type"
  def select_effects(type_id) do
    from(te in "dgmTypeEffects",
      join: e in "dgmEffects",
      on: [effectID: te.effectID],
      where: te.typeID == ^type_id,
      select: %{
        name: e.effectName,
        description: e.description,
        id: e.effectID,
        preExp: e.preExpression
      }
    )
    |> Repo.all()
  end

  @doc "Select useful columns of an expression"
  def select_expression(exp_id) do
    from(exp in "dgmExpressions",
      where: exp.expressionID == ^exp_id,
      select: [
        :arg1,
        :arg2,
        :operandID,
        :expressionID,
        :expressionValue,
        :expressionTypeID,
        :expressionGroupID,
        :expressionAttributeID
      ]
    )
    |> Repo.one()
    |> clean_map()
  end

  @doc "Expand an expression (arg1 and arg2) all the way"
  def expand_expression(root_exp_id) do
    {_, ret} = do_expand_expression(root_exp_id)
    ret
  end

  defp do_expand_expression(nil), do: nil

  defp do_expand_expression(exp_id) do
    exp = select_expression(exp_id)

    expanded_exp =
      exp
      |> Map.put(:arg1, do_expand_expression(exp[:arg1]))
      |> Map.put(:arg2, do_expand_expression(exp[:arg2]))
      |> Map.put(:operand, DC.rev_op(exp.operandID))
      |> clean_map

    {exp_id, expanded_exp}
  end

  defp clean_map(m) do
    m
    |> Enum.reject(fn {_, v} -> v == nil end)
    |> Map.new()
  end

  @doc "List effects use a particular base expression (in all the way down)"
  def list_effect_reference(exp_id) do
    do_list_reference([exp_id], [])
  end

  @doc "Count how many effects use a particular base expression (in all the way down)"
  def count_effect_reference(exp_id) do
    exp_id
    |> list_effect_reference()
    |> length()
  end

  def do_list_reference([], acc), do: acc

  def do_list_reference([exp_id | rest], acc) do
    exp_refs =
      from(e in "dgmExpressions",
        where: e.arg1 == ^exp_id or e.arg2 == ^exp_id,
        select: e.expressionID
      )
      |> Repo.all()

    effect_refs =
      from(ef in "dgmEffects",
        where: ef.preExpression == ^exp_id or ef.postExpression == ^exp_id,
        select: ef.effectID
      )
      |> Repo.all()

    do_list_reference(rest ++ exp_refs, acc ++ effect_refs)
  end
end
