defmodule LiveCheckboxesWeb.BrokenLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    LiveCheckboxesWeb.PageView.render("live_test.html", assigns)
  end

  def mount(_, socket) do
    {:ok, assign(socket, disabled: true)}
  end

  def handle_event(
        "check_enabled",
        %{"departure" => %{"students" => _student_ids}},
        socket
      ) do
    {:noreply, assign(socket, :disabled, false)}
  end

  def handle_event("check_enabled", params, socket) do
    {:noreply, assign(socket, :disabled, true)}
  end
end
