defmodule EffectDigger do
  alias EffectDigger.Repo
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
    |> Enum.reject(fn {k, v} -> k not in [:arg1, :arg2] and v == nil end)
    |> Map.new()
  end

  def expand_expression(root_exp_id) do
    {_, ret} = do_expand_expression(root_exp_id)
    ret
  end

  defp do_expand_expression(nil), do: nil

  defp do_expand_expression(exp_id) do
    exp = select_expression(exp_id)

    {exp_id, %{exp | arg1: do_expand_expression(exp.arg1), arg2: do_expand_expression(exp.arg2)}}
  end
end
