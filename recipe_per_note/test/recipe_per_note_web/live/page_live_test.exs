defmodule RecipePerNoteWeb.PageLiveTest do
  use RecipePerNoteWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "a"
    assert render(page_live) =~ "a"
  end
end
