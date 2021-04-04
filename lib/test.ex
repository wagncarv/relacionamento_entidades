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
    params_user = %{name: "Wagner", cpf: "01966979471", email: "moxttx@mail.com", id: 38}
    # user = User.changeset(params_user)

    # Repo.insert(user)

    # params_meal = %{description: "pizza de calabresa", calories: 345, users_id: 1}
    # meal = Meal.changeset(params_meal)
    # Repo.insert(meal)

    # ==========================================
    # Create.call(params_user)
    # Get.by_id(38)
    # Delete.call(37)
    Update.call(params_user)
  end

  # fim test()
end
