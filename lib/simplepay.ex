defmodule Simplepay do
  alias Simplepay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
