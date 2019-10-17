defmodule Cache.Application do
  use Application

  def start(_, _) do
    Cache.start()
  end
end
