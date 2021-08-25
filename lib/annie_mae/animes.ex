defmodule AnnieMae.Animes do
  alias AnnieMae.Anime
  alias AnnieMae.Repo

  def create(title, number_of_episodes, release_year, submitted_by) do
    %Anime{}
    |> Anime.changeset(%{
      title: title,
      number_of_episodes: number_of_episodes,
      release_year: release_year,
      submitted_by: submitted_by
    })
    |> Repo.insert!()
  end

  def list_all() do
    Repo.all(Anime)
  end
end
