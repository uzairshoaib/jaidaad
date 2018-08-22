defmodule Jaidaad.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
  	field :name, :string
  	field :username, :string, null: false
  	field :password_hash, :string
  	timestamps
  end
  create unique_index(:users, [:username])
end
