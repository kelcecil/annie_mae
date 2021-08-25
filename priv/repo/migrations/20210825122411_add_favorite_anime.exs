defmodule AnnieMae.Repo.Migrations.AddFavoriteAnime do
  use Ecto.Migration

  def change do
    create table("anime") do
      add :title, :string, null: false
      add :release_year, :string
      add :number_of_episodes, :integer, default: 1
      add :submitted_by, :string, default: "An unknown anime fan"

      timestamps()
    end

    create index("anime", :release_year)
  end
end
