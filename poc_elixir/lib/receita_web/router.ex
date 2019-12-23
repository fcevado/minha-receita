defmodule ReceitaWeb.Router do
  use ReceitaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ReceitaWeb do
    pipe_through :api
  end
end
