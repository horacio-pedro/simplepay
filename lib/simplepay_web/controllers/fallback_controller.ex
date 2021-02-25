defmodule SimplapayWeb.FallbackController do
  use SimplepayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(SimplepayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
