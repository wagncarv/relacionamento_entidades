defmodule RelacionamentoEntidades.Repo.Migrations.CreateMealTable do
  use Ecto.Migration

  def change do
    create table(:meals) do
      add :descricao, :string
      add :calorias, :integer
      add :data, :utc_datetime

      timestamps()
    end
  end
end
