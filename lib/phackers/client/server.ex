defmodule Phackers.Client.Server do
  use GenServer

  alias Phackers.Client.InfoHandler

  def start_link(value) do
    GenServer.start_link(__MODULE__, value, name: __MODULE__)
  end

  @impl GenServer
  def init(value) do
    {:ok, value}
  end

  @impl GenServer
  def handle_call(:get_info, _from, state) do
    info = InfoHandler.get_info(state)
    {:reply, {:ok, info}, info}
  end
end
