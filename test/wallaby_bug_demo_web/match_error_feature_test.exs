defmodule WallabyBugDemoWeb.MatchErrorFeatureTest do
  use WallabyBugDemoWeb.FeatureCase

  test "shouldn't raise match error", %{session: session} do
    try do
      session
      |> visit("/")
      |> execute_script("""
      const response = await fetch("www.google.com")
      .then(r => r.text())
      .then(t => t);

      return response;
      """)

      assert true
    rescue
      MatchError ->
        assert false
    end
  end
end
