defmodule Xudoku.Repo do
  use Ecto.Repo,
    otp_app: :xudoku,
    adapter: Ecto.Adapters.Postgres
end
