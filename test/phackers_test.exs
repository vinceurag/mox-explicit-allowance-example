defmodule PhackersTest do
  use ExUnit.Case
  doctest Phackers

  test "greets the world" do
    assert Phackers.hello() == :world
  end
end
