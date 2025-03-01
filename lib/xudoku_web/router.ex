defmodule XudokuWeb.Router do
  use XudokuWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug Phoenix.LiveView.Flash
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", XudokuWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/clock", ClockLive
    live "/demo", DemoLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", XudokuWeb do
  #   pipe_through :api
  # end
end
