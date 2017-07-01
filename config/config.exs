# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trechter,
  ecto_repos: [Trechter.Repo]

# Configures the endpoint
config :trechter, Trechter.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ETdF8a+2Fu8/5KyHJpZOGWiZFG/8Px3ZaMX7MVqbSCnfMjo+nuNxA0lSiPd5FW1/",
  render_errors: [view: Trechter.ErrorView, accepts: ~w(json)],
  pubsub: [name: Trechter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
