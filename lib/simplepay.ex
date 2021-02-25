defmodule Simplepay do
  alias Simplepay.Users.Create, as: UserCreate
  alias Simplepay.Accounts.{Deposit, Withdraw}

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call
  defdelegate withdraw(params), to: Withdraw, as: :call
end
