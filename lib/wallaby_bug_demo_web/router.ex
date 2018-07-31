defmodule WallabyBugDemoWeb.Router do
  use WallabyBugDemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WallabyBugDemoWeb do
    pipe_through :api
  end
end
