defmodule RelacionamentoEntidadesWeb.MealsController do
  use RelacionamentoEntidadesWeb, :controller
  alias RelacionamentoEntidades.Meal

  def show(conn, %{"id" => id}) do
    with {:ok, %Meal{} = meal} <- RelacionamentoEntidades.get_meal_by_id(id) do
      conn
      |> put_status(:ok)
      |> render("meal.json", meal: meal)
    end
  end
end
