defmodule RelacionamentoEntidades.Users.Delete do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Repo

  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, "User not found"}
      user -> {:ok, _result} = Repo.delete(user)
    end

    {:ok, "Deleted from database"}
  end
end
