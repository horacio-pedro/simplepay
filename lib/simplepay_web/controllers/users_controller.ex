defmodule SimplepayWeb.UsersController do
  use SimplepayWeb, :controller

  alias Simplepay.User

  action_fallback SimplapayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Simplepay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
