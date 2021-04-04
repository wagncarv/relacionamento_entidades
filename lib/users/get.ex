defmodule RelacionamentoEntidades.Users.Get do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Repo

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, "User not found"}
      user -> {:ok, user}
    end
  end
end
