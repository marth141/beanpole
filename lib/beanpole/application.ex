defmodule Beanpole.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Beanpole.Repo,
      # Start the Telemetry supervisor
      BeanpoleWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Beanpole.PubSub},
      # Start the Endpoint (http/https)
      BeanpoleWeb.Endpoint,
      # Start a worker by calling: Beanpole.Worker.start_link(arg)
      # {Beanpole.Worker, arg},
      {Finch, name: MyFinch}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Beanpole.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BeanpoleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
