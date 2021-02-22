defmodule Simplepay.Repo do
  use Ecto.Repo,
    otp_app: :simplepay,
    adapter: Ecto.Adapters.Postgres
end
