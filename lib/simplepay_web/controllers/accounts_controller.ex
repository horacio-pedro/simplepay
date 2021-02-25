defmodule SimplepayWeb.AccountsController do
  use SimplepayWeb, :controller

  alias Simplepay.Account

  action_fallback SimplapayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Simplepay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Simplepay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
