defmodule RelacionamentoEntidadesWeb.FallbackController do
  use RelacionamentoEntidadesWeb, :controller
  alias RelacionamentoEntidadesWeb.ErrorView

  # def call(conn, {:errors, %{status: status, result: result}}) do
  def call(conn, {:errors, _}) do
    conn
    |> put_status(400)
    |> put_view(ErrorView)
    |> render("error.json", result: "error")
  end
end
