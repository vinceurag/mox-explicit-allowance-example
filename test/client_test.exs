defmodule Phackers.ClientTest do
  use ExUnit.Case

  import Mox

  alias Phackers.Client.ProviderMock

  setup :verify_on_exit!

  describe "get_info/1" do
    test "returns info" do
      value = 1
      Phackers.Client.Server.start_link(value)

      ProviderMock
      |> expect(:get_info, fn args ->
        assert args == value

        value
      end)
      |> allow(self(), Process.whereis(Phackers.Client.Server))

      assert {:ok, ^value} = Phackers.Client.get_info(value)
    end
  end
end
