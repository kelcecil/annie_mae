defmodule AnnieMaeWeb.PageController do
  use AnnieMaeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
