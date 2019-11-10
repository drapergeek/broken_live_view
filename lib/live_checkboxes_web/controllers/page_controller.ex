defmodule LiveCheckboxesWeb.PageController do
  use LiveCheckboxesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
