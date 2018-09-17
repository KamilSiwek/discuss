defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  # When use alias you can change for example %Discuss.Topic{} for %Topic{}
  alias Discuss.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})
  end
end
