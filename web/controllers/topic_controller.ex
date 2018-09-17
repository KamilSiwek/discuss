defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  # When use alias you can change for example:
  # "Elixir.Topic.changeset(%Elixir.Topic{}, %{})"
  # for
  # "Topic.changeset(%Topic{}, %{})""
  alias Discuss.Topic

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end

  # Alternative for:
  # def create(conn, params) do
     # %{"topic" => topic} = params
  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Repo.insert(changeset) do
      {:ok, post} -> IO.inspect(post)
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
  end
end
