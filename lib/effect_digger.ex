defmodule EffectDigger do
  alias EffectDigger.Repo
  require EffectDigger.DogmaConst, as: DC
  import Ecto.Query, only: [from: 2]

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
end
