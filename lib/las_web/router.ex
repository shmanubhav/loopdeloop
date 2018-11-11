defmodule LasWeb.Router do
  use LasWeb, :router

  pipeline :browser do
    plug :accepts, ["html", "js"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LasWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/login", PageController, :login
  end

  # Other scopes may use custom stacks.
  # scope "/api", LasWeb do
  #   pipe_through :api
  # end
end
