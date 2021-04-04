defmodule RelacionamentoEntidades.Users.Update do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Repo

  def call(%{id: id} = params) do
    case Repo.get(User, id) do
      nil -> {:error, "User not found"}
      user -> update_user(user, params)
    end
  end

  defp update_user(user, params) do
    user
    |> User.changeset(params)
    |> Repo.update()
  end
end
