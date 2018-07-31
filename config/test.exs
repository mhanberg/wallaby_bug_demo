use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wallaby_bug_demo, WallabyBugDemoWeb.Endpoint,
  http: [port: 4001],
  server: false

config :wallaby,
  screenshot_on_failure: true,
  chrome: [headless: true],
  driver: Wallaby.Experimental.Chrome

# Print only warnings and errors during test
config :logger, level: :warn
