defmodule RelacionamentoEntidades.Meal do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset
  alias RelacionamentoEntidades.User

  @primary_key {:id, :id, autogenerate: true}
  @required_params [:description, :calories]

  @derive {Jason.Encoder, only: [:id, :description, :calories, :date]}

  schema "meals" do
    field :description, :string
    field :calories, :integer
    field :date, :utc_datetime

    belongs_to :users, User

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:description, min: 8)
    |> put_date_time()
  end

  defp put_date_time(%Changeset{valid?: true, changes: %{} = changes} = changeset) do
    data = Map.merge(changes, %{date: DateTime.truncate(DateTime.utc_now(), :second)})
    change(changeset, data)
  end

  defp put_date_time(changeset), do: changeset
end
