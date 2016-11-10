defmodule Drft.Router do
  use Drft.Web, :router

  forward "/api", Absinthe.Plug, schema: Drft.Schema  
end
