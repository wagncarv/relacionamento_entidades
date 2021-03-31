# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :relacionamento_entidades,
  ecto_repos: [RelacionamentoEntidades.Repo]

# Configures the endpoint
config :relacionamento_entidades, RelacionamentoEntidadesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "55jLZgbIdH7RhlF1NPZSwJD1EbbcZMb6YbCSdq2WHCqjmJ38pNMFVkROKB6CfBwO",
  render_errors: [view: RelacionamentoEntidadesWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: RelacionamentoEntidades.PubSub,
  live_view: [signing_salt: "jnev5tbj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
