use Mix.Config

# Configure your database
config :live_checkboxes, LiveCheckboxes.Repo,
  username: "postgres",
  password: "postgres",
  database: "live_checkboxes_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_checkboxes, LiveCheckboxesWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
