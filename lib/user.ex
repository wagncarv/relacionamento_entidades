defmodule RelacionamentoEntidades.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset
  # alias RelacionamentoEntidades.Meal
  @primary_key {:id, :binary_id, autogenerate: true}
  @required_params [:cpf, :email, :name]

  @derive {Jason.Encoder, only: [:id, :name, :cpf, :email]}

  schema "users" do
    field :name, :string
    field :cpf, :string
    field :email, :string

    timestamps()
  end
end
