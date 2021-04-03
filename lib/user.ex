defmodule RelacionamentoEntidades.User do
  use Ecto.Schema
  import Ecto.Changeset
  # alias Ecto.Changeset
  alias RelacionamentoEntidades.Meal

  @primary_key {:id, :id, autogenerate: true}
  @required_params [:cpf, :email, :name]

  @derive {Jason.Encoder, only: [:id, :name, :cpf, :email]}

  schema "users" do
    field :name, :string
    field :cpf, :string
    field :email, :string

    has_many :meals, Meal

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:cpf, is: 11)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> unique_constraint(:cpf)
  end
end
