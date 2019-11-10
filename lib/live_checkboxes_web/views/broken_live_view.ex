defmodule LiveCheckboxesWeb.BrokenLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    LiveCheckboxesWeb.PageView.render("live_test.html", assigns)
  end
end
