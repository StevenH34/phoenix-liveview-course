# Generated in mix phx.gen.schema
defmodule Slax.Chat.Room do
  use Ecto.Schema
  import Ecto.Changeset

  # "rooms" is the table name
  schema "rooms" do
    # Def the %Rooms{} attributes
    # id primary key is auto-generated
    field :name, :string
    field :topic, :string

    timestamps(type: :utc_datetime) # For inserted at and updated at
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:name, :topic])
    |> validate_required([:name, :topic])
  end
end
