defmodule WallabyBugDemoWeb.MatchErrorFeatureTest do
  use WallabyBugDemoWeb.FeatureCase

  test "should raise match error", %{session: session} do
    assert_raise(MatchError, fn ->
      session
      |> visit("/")
      |> execute_script("""
      const response = await fetch("www.google.com")
        .then(r => r.text())
        .then(t => t);

      return response;
      """)
    end)
  end
end
