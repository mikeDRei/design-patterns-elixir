defmodule TemplateMethodTest do
  use ExUnit.Case
  doctest TemplateMethod

  test "greets the world" do
    assert TemplateMethod.hello() == :world
  end
end
