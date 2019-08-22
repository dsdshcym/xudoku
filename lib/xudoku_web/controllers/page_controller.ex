defmodule XudokuWeb.PageController do
  use XudokuWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
