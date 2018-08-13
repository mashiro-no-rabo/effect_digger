use Mix.Config

config :effect_digger, EffectDigger.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "effect_digger",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :effect_digger,
  ecto_repos: [EffectDigger.Repo]
