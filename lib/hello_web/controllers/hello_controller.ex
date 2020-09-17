defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Locale, "en"

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end

  # def show(conn, %{"messenger" => messenger}) do
  #   conn
  #   |> assign(:messenger, messenger)
  #   |> assign(:receiver, "Dweezil")
  #   |> render("show.html")
  # end

  # def show(conn, %{"messenger" => messenger}) do
  #   conn
  #   |> Plug.Conn.assign(:messenger, messenger)
  #   |> render("show.html")
  # end

  # def show(conn, %{"messenger" => messenger}) do
  #   text(conn, "From messenger #{messenger}")
  # end

  # def show(conn, %{"messenger" => messenger}) do
  #   json(conn, %{id: messenger})
  # end

  # def show(conn, %{"messenger" => messenger}) do
  #   html(conn, """
  #    <html>
  #      <head>
  #         <title>Passing a Messenger</title>
  #      </head>
  #      <body>
  #        <p>From messenger #{messenger}</p>
  #      </body>
  #    </html>
  #   """)
  # end

end
