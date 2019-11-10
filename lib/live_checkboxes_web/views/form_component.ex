defmodule LiveCheckboxesWeb.FormComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    LiveCheckboxesWeb.PageView.render("form.html", assigns)
  end

  def mount(socket) do
    {:ok, assign(socket, disabled: false)}
  end
end
