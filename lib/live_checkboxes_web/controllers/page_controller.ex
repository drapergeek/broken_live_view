defmodule LiveCheckboxesWeb.PageController do
  use LiveCheckboxesWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
