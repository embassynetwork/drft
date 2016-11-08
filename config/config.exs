# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :drft,
  ecto_repos: [Drft.Repo]

# Configures the endpoint
config :drft, Drft.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "umtECPNlRgNTjC8OOMh+23+nxA5C5+cnjq5s4fq4UObUeJrl00mweyFzwXmdCq3g",
  render_errors: [view: Drft.ErrorView, accepts: ~w(json)],
  pubsub: [name: Drft.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
