defmodule AnnieMae.Anime do
  use Ecto.Schema
  import Ecto.Changeset

  schema "anime" do
    field :title, :string
    field :release_year, :string
    field :number_of_episodes, :integer
    field :submitted_by, :string

    timestamps()
  end

  def changeset(module, attrs) do
    module
    |> cast(attrs, [:title, :release_year, :number_of_episodes, :submitted_by])
    |> validate_required([:title])
  end
end
