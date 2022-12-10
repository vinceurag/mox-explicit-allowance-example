defmodule Phackers.Client do
  def get_info(value) do
    GenServer.call(Phackers.Client.Server, :get_info)
  end
end
