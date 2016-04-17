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

  test "rolling 2" do
    assert BowlingGame.score([2]) == 2
  end

  test "rolling 1-1" do
    assert BowlingGame.score([1,1]) == 2
  end

  test "rolling spare-2" do
    assert BowlingGame.score([4,6,2]) == 4+6+2 + 2
  end

  test "rolling all fives" do
    rolls = Enum.take(Stream.cycle([5]), 21)
    assert BowlingGame.score(rolls) == 150
  end

  test "rolling strike-2-3" do
    assert BowlingGame.score([10,2,3]) == 10+2+3 + 2+3
  end
end
