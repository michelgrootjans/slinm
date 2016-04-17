defmodule ElixirTest do
  use ExUnit.Case
  doctest BowlingGame

  test "a new game" do
    assert BowlingGame.score([]) == 0
  end

  test "rolling 0" do
    assert BowlingGame.score([0]) == 0
  end

  test "rolling 1" do
    assert BowlingGame.score([1]) == 1
  end
end
