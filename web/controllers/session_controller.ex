defmodule Trechter.SessionController do
  use Trechter.Web, :controller

  def index(conn, _params) do
    # Return some static JSON for now
    conn
    |> json(%{status: "OK"})
  end
end