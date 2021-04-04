defmodule RelacionamentoEntidadesWeb.WelcomeController do
  use RelacionamentoEntidadesWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> text("Welcome!")
  end
end
