defmodule EffectDigger.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    
    children = [
      supervisor(EffectDigger.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: EffectDigger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
