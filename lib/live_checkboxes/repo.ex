defmodule LiveCheckboxes.Repo do
  use Ecto.Repo,
    otp_app: :live_checkboxes,
    adapter: Ecto.Adapters.Postgres
end
