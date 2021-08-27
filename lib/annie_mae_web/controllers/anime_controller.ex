defmodule AnnieMaeWeb.AnimeController do
  use AnnieMaeWeb, :controller
  alias AnnieMae.Animes

  def index(conn, _params) do
    animes = Animes.list_all()

    render(conn, "index.html", animes: animes)
  end

  def new(conn, _params) do
    render(conn, "new.html", token: get_csrf_token())
  end

  def create(conn, %{"_csrf_token" => _csrf_token,
    "anime" => %{"title" => title, "release_year" => year, "submitted_by" => submitted_by, "number_of_episodes" => num}}) do
      _ = Animes.create(title, num, year, submitted_by)

      conn
      |> redirect(to: Routes.anime_path(conn, :index))
      |> halt()
  end
end
