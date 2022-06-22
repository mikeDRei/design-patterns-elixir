defmodule CompositeTest do
  use ExUnit.Case
  doctest Composite

  test "greets the world" do
    assert Composite.hello() == :world
  end
end
