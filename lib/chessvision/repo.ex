defmodule Chessvision.Repo do
  use Ecto.Repo,
    otp_app: :chessvision,
    adapter: Ecto.Adapters.Postgres
end
