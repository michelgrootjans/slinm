defmodule ElixirTest do
  use ExUnit.Case
  doctest BowlingGame

  test "a new game" do
    assert BowlingGame.score([]) == 0
  end
end
