defmodule Issues.GithubIssues do
  @user_agent [{"User-Agent", "Elixir danny@learningelixir.com"}]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    "https://api.github.com/repos/#{user}/#{project}/issues"
  end

  def handle_response({_, %{status_code: 200, body: body}}) do
    {:ok, :jsx.decode(body)}
  end

  def handle_response({_, %{status_code: _, body: body}}) do
    {:error, :jsx.decode(body)}
  end
end
