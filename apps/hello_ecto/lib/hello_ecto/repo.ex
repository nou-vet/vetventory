defmodule HelloEcto.Repo do
  use Ecto.Repo,
    otp_app: :hello_ecto,
    adapter: Ecto.Adapters.Postgres
end
