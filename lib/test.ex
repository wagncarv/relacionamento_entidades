defmodule Test do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Meal

  def test do
    params_user = %{name: "Wagner", cpf: "71728976439", email: "my@mail.com"}
    User.changeset(params_user)

    # params_meal = %{description: "pizza de calabresa", calories: 345}
    # Meal.changeset(params_meal)
  end
end
