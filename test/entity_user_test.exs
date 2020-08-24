defmodule CreditCardLedger.Entity.UserTest do
  use ExUnit.Case
  alias CreditCardLedger.Entity.User
  alias CreditCardLedger.Repo

  # TODO: Conexão com o banco está se perdendo, investigar motivo
  test "save a user in the database" do
    params = %{
      fullname: "Some Body"
    }

    changeset = User.cast(params)
    users = Repo.insert(changeset)

    assert [%User{}] = users
  end
end