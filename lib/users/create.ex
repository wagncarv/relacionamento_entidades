defmodule RelacionamentoEntidades.Users.Create do
  alias RelacionamentoEntidades.User
  alias RelacionamentoEntidades.Repo
  alias Ecto.Changeset

  def call(params) do
    User.changeset(params)
    |> Repo.insert()
    |> handle()
  end

  defp handle({:error, %Changeset{} = changeset}) do
    errors =
      Changeset.traverse_errors(changeset, fn {msg, opts} ->
        Enum.reduce(opts, msg, fn {key, value}, acc ->
          String.replace(acc, "%{#{key}}", to_string(value))
        end)
      end)

    {:errors, errors}
  end

  defp handle({:ok, %User{} = user}), do: {:ok, user}
end
