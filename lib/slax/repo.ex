# Phoenix uses Ecto.Repo to interact with its db
# We use Slax.Repo to query, insert, update, and delete db records
defmodule Slax.Repo do
  use Ecto.Repo,
    otp_app: :slax,
    adapter: Ecto.Adapters.Postgres
end
