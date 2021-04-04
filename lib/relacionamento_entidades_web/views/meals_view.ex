defmodule RelacionamentoEntidadesWeb.MealsView do
  use RelacionamentoEntidadesWeb, :view
  alias RelacionamentoEntidades.Meal

  # def render("meal.json", %{meal: %Meal{} = meal}) do
  #   %{
  #     message: "Meal created",
  #     user: meal
  #   }
  # end

  def render("meal.json", %{meal: %Meal{} = meal}), do: %{meal: meal}
end
