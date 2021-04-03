defmodule Test do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Meal
  alias RelacionamentoEntidades.Repo
  alias RelacionamentoEntidades.Users.Create
  alias Ecto.Changeset

  def test do
    params_user = %{name: "Wagner", cpf: "71977976471", email: "mypp@mail.com"}
    # user = User.changeset(params_user)

    # Repo.insert(user)

    # params_meal = %{description: "pizza de calabresa", calories: 345, users_id: 1}
    # meal = Meal.changeset(params_meal)
    # Repo.insert(meal)

    # ==========================================
    Create.call(params_user)
  end

  # fim test()

end
