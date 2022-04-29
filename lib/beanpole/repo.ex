defmodule Beanpole.Repo do
  use Ecto.Repo,
    otp_app: :beanpole,
    adapter: Ecto.Adapters.Postgres
end
