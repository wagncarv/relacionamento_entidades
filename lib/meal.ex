defmodule RelacionamentoEntidades.Meal do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset
  # alias RelacionamentoEntidades.User
  
  @primary_key {:id, :binary_id, autogenerate: true}
  @required_params [:description, :calories, :date]

  @derive {Jason.Encoder, only: [:id, :description, :calories, :date]}

  schema "meals" do
    field :description, :string
    field :calories, :integer
    field :date, :utc_datetime

    timestamps()
  end
end
