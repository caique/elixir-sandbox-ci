# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sandbox_ci,
  ecto_repos: [SandboxCi.Repo]

# Configures the endpoint
config :sandbox_ci, SandboxCi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SKlzcx/n/Bo5hlxMZbYLsZAq5Cga/59Dh1MEUUi/Bh/IIKxyay/vcFH8EToel+gx",
  render_errors: [view: SandboxCi.ErrorView, accepts: ~w(json)],
  pubsub: [name: SandboxCi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
