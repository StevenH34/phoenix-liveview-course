# Context file
# Contexts are Elixir modules that talk to ext service, such as an db or API
defmodule Slax.Chat do
  alias Slax.Chat.Room
  alias Slax.Repo

  import Ecto.Query

  def get_first_room! do
    Repo.one!(from r in Room, limit: 1, order_by: [asc: :name])
  end

  def get_room!(id) do
    Repo.get!(Room, id)
  end

  def list_rooms do
    Repo.all(from r in Room, order_by: [asc: :name])
  end
end
