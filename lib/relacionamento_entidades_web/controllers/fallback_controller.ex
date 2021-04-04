defmodule RelacionamentoEntidadesWeb.FallbackController do
  use RelacionamentoEntidadesWeb, :controller
  alias RelacionamentoEntidades.ErrorView

  def call(conn, {:error, %{status: 400}}) do
    conn
    |> put_status(400)
    |> put_view(ErrorView)
    |> render("error.json", result: "error")
  end
end
