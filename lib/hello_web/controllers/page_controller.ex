defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  # def index(conn, _params) do
  #   render(conn, "index.html")
  # end

  # def index(conn, _params) do
  #   render(conn, :index)
  # end

  # def index(conn, _params) do
  #   redirect(conn, to: "/redirect_test")
  # end

  # def index(conn, _params) do
  #   redirect(conn, external: "https://elixir-lang.org/")
  # end

  # def index(conn, _params) do
  #   redirect(conn, to: Routes.page_path(conn, :redirect_test))
  # end

  # def index(conn, _params) do
  #   conn
  #   |> put_flash(:info, "Welcome to Phoenix, from flash info!")
  #   |> put_flash(:error, "Let's pretend we have an error.")
  #   |> render("index.html")
  # end

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> redirect(to: Routes.page_path(conn, :redirect_test))
  end

  # def index(conn, _params) do
  #   conn
  #   |> put_status(202)
  #   |> render("index.html")
  # end

  # def index(conn, _params) do
  #   conn
  #   |> put_resp_content_type("text/xml")
  #   |> render("index.xml")
  # end

  # def index(conn, _params) do
  #   conn
  #   |> put_resp_content_type("text/plain")
  #   |> send_resp(201, "")
  # end

  # def index(conn, _params) do
  #   conn
  #   |> put_layout("admin.html")
  #   |> render("index.html")
  # end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end

end
