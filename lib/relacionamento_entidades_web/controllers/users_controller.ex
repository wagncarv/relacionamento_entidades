defmodule RelacionamentoEntidadesWeb.UsersController do
  use RelacionamentoEntidadesWeb, :controller
  alias RelacionamentoEntidades.User

  def create(conn, params) do
    with {:ok, %User{} = user} <- RelacionamentoEntidades.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, _} <- RelacionamentoEntidades.delete_user(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %User{} = user} <- RelacionamentoEntidades.get_user_by_id(id) do
      conn
      |> put_status(:ok)
      |> render("user.json", user: user)
    end
  end

  def update(conn, params) do
    with {:ok, %User{} = user} <- RelacionamentoEntidades.update_user(params) do
      conn
      |> put_status(:ok)
      |> render("user.json", user: user)
    end
  end
end
