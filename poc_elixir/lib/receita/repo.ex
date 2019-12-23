defmodule Receita.Repo do
  use Ecto.Repo,
    otp_app: :receita,
    adapter: Ecto.Adapters.Postgres
end
