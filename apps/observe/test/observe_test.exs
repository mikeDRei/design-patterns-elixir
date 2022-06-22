defmodule ObserveTest do
  use ExUnit.Case
  doctest Observe

  test "greets the world" do
    assert Observe.hello() == :world
  end
end
