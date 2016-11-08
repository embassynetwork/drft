defmodule Drft.Router do
  use Drft.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Drft do
    pipe_through :api
  end
end
