defmodule Trechter.Router do
  use Trechter.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Trechter do
    pipe_through :api
    resources "session", SessionController, only: [:index]
  end
end