defmodule RelacionamentoEntidades.Repo do
  use Ecto.Repo,
    otp_app: :relacionamento_entidades,
    adapter: Ecto.Adapters.Postgres
end
