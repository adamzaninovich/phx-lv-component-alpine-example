# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :autocomplete_search, AutocompleteSearchWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k+9UTwIuI88KxrUDqEh/HULQHrFEJAUYS82H/bnM2EGF0OUBG/c8yVeqLb89Xrzi",
  render_errors: [view: AutocompleteSearchWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AutocompleteSearch.PubSub,
  live_view: [signing_salt: "ki3P46L4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"