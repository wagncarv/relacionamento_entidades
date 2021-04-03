defmodule RelacionamentoEntidades.Repo.Migrations.CreateMealTable do
  use Ecto.Migration

  def change do
    create table(:meals) do
      add :description, :string
      add :calories, :integer
      add :date, :utc_datetime
      add :user_id, references(:users)

      timestamps()
    end
  end
end
