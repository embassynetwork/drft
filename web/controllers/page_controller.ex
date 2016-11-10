defmodule Drft.PageController do
  use Drft.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
