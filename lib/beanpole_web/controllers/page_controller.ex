defmodule BeanpoleWeb.PageController do
  use BeanpoleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
