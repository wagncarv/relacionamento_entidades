defmodule Test do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Meal
  alias RelacionamentoEntidades.Repo
  alias RelacionamentoEntidades.Users.Create
  alias RelacionamentoEntidades.Users.Get
  alias RelacionamentoEntidades.Users.Delete
  alias RelacionamentoEntidades.Users.Update
  alias Ecto.Changeset

  def test do
    # params_user = %{name: "Wagner", cpf: "01176909471", email: "moplut@mail.com"}
    # user = User.changeset(params_user)

    # Repo.insert(user)

    # params_meal = %{description: "pizza de calabresa", calories: 345, users_id: 1}
    # meal = Meal.changeset(params_meal)
    # Repo.insert(meal)

    # ==========================================
    # RelacionamentoEntidades.create_user(params_user)
    # RelacionamentoEntidades.get_user_by_id(41)
    # RelacionamentoEntidades.delete_user(41)
    RelacionamentoEntidades.update_user(params_user)
  end

  # fim test()
end
