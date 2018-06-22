defmodule SandboxCi.Router do
  use SandboxCi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SandboxCi do
    pipe_through :api
  end
end
