defmodule Simplepay.Accounts.Withdraw do
  alias Simplepay.Accounts.Operation
  alias Simplepay.Repo

  def call(params ) do
    params
    |> Operation.call(:withdraw)
    |> run_transaction()
  end

  defp run_transaction(multi) do
    case Repo.transaction(multi) do
      {:error, _operation, reason, _change} -> {:error, reason}
      {:ok, %{account_withdraw: account}} -> {:ok, account}
    end
  end
end
