defmodule AnnieMae.Repo do
  use Ecto.Repo,
    otp_app: :annie_mae,
    adapter: Ecto.Adapters.Postgres
end
