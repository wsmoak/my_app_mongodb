use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_app, MyApp.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Set a higher stacktrace during test
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :my_app, MyApp.Repo,
  adapter: Mongo.Ecto,
  database: "my_app_test",
  pool_size: 1
