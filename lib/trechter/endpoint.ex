defmodule Trechter.Endpoint do
  use Phoenix.Endpoint, otp_app: :trechter

  socket "/socket", Trechter.UserSocket

  plug CORSPlug

  plug Trechter.Router
end
