defmodule Currency.CoursesController do
  use CurrencyWeb, :controller

  def index(conn, _params) do
    url = 'https://www.cbr-xml-daily.ru/daily_json.js'
    response = HTTPoison.get!(url)
    req = Poison.decode!(response.body)
    # render(conn, "index.json", req)
    json(conn, req)
  end
end
