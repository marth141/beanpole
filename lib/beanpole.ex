defmodule Beanpole do
  @moduledoc """
  Beanpole keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def send_self_post() do
    Finch.build(
      :post,
      "http://localhost:4000/api/post",
      [{"content-type", "application/json"}],
      Jason.encode!(%{"hello" => "world"})
    )
    |> Finch.request(MyFinch)
  end

  def send_self_get() do
    Finch.build(
      :get,
      "http://localhost:4000/api/get?hello=world",
      [{"content-type", "application/json"}]
    )
    |> Finch.request(MyFinch)
  end

  def send_self_put() do
    Finch.build(
      :put,
      "http://localhost:4000/api/put",
      [{"content-type", "application/json"}],
      Jason.encode!(%{"hello" => "world"})
    )
    |> Finch.request(MyFinch)
  end

  def send_self_patch() do
    Finch.build(
      :patch,
      "http://localhost:4000/api/patch",
      [{"content-type", "application/json"}],
      Jason.encode!(%{"hello" => "world"})
    )
    |> Finch.request(MyFinch)
  end

  def send_self_delete() do
    Finch.build(
      :delete,
      "http://localhost:4000/api/delete",
      [{"content-type", "application/json"}],
      Jason.encode!(%{"hello" => "world"})
    )
    |> Finch.request(MyFinch)
  end
end
