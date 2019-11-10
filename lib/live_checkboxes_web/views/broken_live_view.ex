defmodule LiveCheckboxesWeb.BrokenLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    LiveCheckboxesWeb.PageView.render("live_test.html", assigns)
  end

  def mount(_, socket) do
    users = [
      %{
        id: 1,
        name: "Jessica",
        groups: [%{id: 1, name: "IT"}, %{id: 2, name: "Marketing"}]
      },
      %{
        id: 2,
        name: "Teh-Way",
        groups: [%{id: 1, name: "IT"}, %{id: 2, name: "Marketing"}]
      }
    ]

    {:ok, assign(socket, disabled: false, users: users)}
  end

  def handle_event("check_enabled", _value, socket) do
    IO.puts("check_enabled")
    {:noreply, socket}
  end
end
