defmodule BeanpoleWeb.ApiController do
  use BeanpoleWeb, :controller

  def get(conn, _params) do
    IO.inspect(conn)
    json(conn, %{status: :ok})
  end

  def post(conn, _params) do
    IO.inspect(conn)
    json(conn, %{status: :ok})
  end

  def put(conn, _params) do
    IO.inspect(conn)
    json(conn, %{status: :ok})
  end

  def patch(conn, _params) do
    IO.inspect(conn)
    json(conn, %{status: :ok})
  end

  def delete(conn, _params) do
    IO.inspect(conn)
    json(conn, %{status: :ok})
  end
end
