defmodule RelacionamentoEntidades.Meals.Get do
  alias RelacionamentoEntidades.Meal
  alias RelacionamentoEntidades.Repo

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, "Meal not found"}
      meal -> {:ok, meal}
    end
  end
end
