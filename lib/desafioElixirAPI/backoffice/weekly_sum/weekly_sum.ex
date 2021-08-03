defmodule DesafioElixirAPI.WeeklySum do
  @moduledoc """
  Models the WeeklySums table for interaction.
  """

  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @casting_fields [:amount]

  @required_fields_create [:amount]

  @derive {Jason.Encoder, only: [:id, :amount, :inserted_at]}

  schema "weekly_sum" do
    field :amount, :float

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @casting_fields)
    |> validate_required(@required_fields_create)
  end
end
