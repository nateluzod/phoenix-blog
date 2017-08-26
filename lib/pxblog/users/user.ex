defmodule Pxblog.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pxblog.Users.User

  schema "users" do
    field :email, :string
    field :password_digest, :string
    field :username, :string

    timestamps()

    # Virtual Fields
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true     
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :email, :password, :password_confirmation])
    |> validate_required([:username, :email, :password, :password_confirmation])
  end
end
