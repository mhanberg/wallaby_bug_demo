defmodule WallabyBugDemoWeb.FeatureCase do
  @moduledoc """
  This module sets up Feature tests using Wallaby and Google Chrome. 
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import WallabyBugDemoWeb.Router.Helpers
    end
  end

  setup tags do
    {:ok, session} = Wallaby.start_session()
    session = Wallaby.Browser.resize_window(session, 1024, 1024)

    {:ok, session: session}
  end
end

