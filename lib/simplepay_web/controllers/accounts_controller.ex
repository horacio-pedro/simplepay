defmodule SimplepayWeb.AccountsController do
  use SimplepayWeb, :controller

  alias Simplepay.Account
  alias Simplepay.Accounts.Transactions.Response, as: TransactionResponse

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

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Simplepay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
