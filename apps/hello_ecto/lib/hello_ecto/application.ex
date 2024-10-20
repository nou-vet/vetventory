defmodule HelloEcto.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      HelloEcto.Repo,
      {DNSCluster, query: Application.get_env(:hello_ecto, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: HelloEcto.PubSub}
      # Start a worker by calling: HelloEcto.Worker.start_link(arg)
      # {HelloEcto.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: HelloEcto.Supervisor)
  end
end
