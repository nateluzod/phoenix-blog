defmodule Pxblog.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :username, :string
      add :email, :string
      add :password_digest, :string

      timestamps()
    end

  end
end
