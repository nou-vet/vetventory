defmodule HelloEcto.Repo do
  use Ecto.Repo, otp_app: :hello_eco, adapter: Ecto.Adapters.SQLite3
end
