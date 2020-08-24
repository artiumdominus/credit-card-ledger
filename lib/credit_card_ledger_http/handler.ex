defmodule CreditCardLedgerHTTP.Handler do
  import Plug.Conn

  def index(conn) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(:ok, "Olar")
  end
end
