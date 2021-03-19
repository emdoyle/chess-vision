# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chessvision,
  ecto_repos: [Chessvision.Repo]

# Configures the endpoint
config :chessvision, ChessvisionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PRSZ8LnQs8PTuQYXeOG91fr7qiSKp1bxB9ZzNgmQcm1t68E66URuCC13HueqB0hE",
  render_errors: [view: ChessvisionWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Chessvision.PubSub,
  live_view: [signing_salt: "zt7LV9qK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
