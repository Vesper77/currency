defmodule Currency.CoursesView do
  use CurrencyWeb, :view

  # If you want to customize a particular status code
  # for a certain format, you may uncomment below.
  def render("index.json", assigns) do
    %{couses: %{detail: assigns}}
  end
end
