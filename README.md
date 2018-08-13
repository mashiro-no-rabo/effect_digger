# EffectDigger

## Setup

- Grab deps: `mix deps.get`
- Create DB: `mix ecto.create`
- Dump SDE: `pg_restore --no-owner --clean --if-exists -d effect_digger postgres-latest.dmp`
