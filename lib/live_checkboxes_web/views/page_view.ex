defmodule LiveCheckboxesWeb.PageView do
  use LiveCheckboxesWeb, :view

  def disabled?(true), do: "disabled"
  def disabled?(_), do: nil
end
