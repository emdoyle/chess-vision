defmodule ChessvisionWeb.HelloWorldController do
  use ChessvisionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
