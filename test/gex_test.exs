defmodule GexTest do
  use ExUnit.Case
  doctest Gex

  test "greets the world" do
    assert Gex.hello() == :world
  end
end
