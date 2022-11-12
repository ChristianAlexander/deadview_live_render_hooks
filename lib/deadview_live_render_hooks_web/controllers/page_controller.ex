defmodule DeadviewLiveRenderHooksWeb.PageController do
  use DeadviewLiveRenderHooksWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
