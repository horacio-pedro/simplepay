defmodule Simplepay.Users.Create do
  alias Simplepay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
