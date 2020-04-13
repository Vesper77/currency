defmodule CurrencyWeb.Router do
  use CurrencyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CurrencyWeb do
    pipe_through :api

  end

  get "/courses/", Currency.CoursesController, :index
end
