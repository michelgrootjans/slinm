defmodule ElixirTest do
  use ExUnit.Case
  doctest BowlingGame

  test "a new game", do: assert BowlingGame.score([]) == 0
  test "rolling 0", do: assert BowlingGame.score([0]) == 0
  test "rolling 1", do: assert BowlingGame.score([1]) == 1
  test "rolling 2", do: assert BowlingGame.score([2]) == 2
  test "rolling 1 twice", do: assert BowlingGame.score([1,1]) == 2

  test "rolling all 1-es" do
    assert BowlingGame.score([1,1, 1,1, 1,1, 1,1, 1,1, 1,1, 1,1, 1,1, 1,1, 1,1]) == 20
  end

  test "rolling a sequence" do
    assert BowlingGame.score([1,2,3,4,5]) == (1+2+3+4+5)
  end

  test "rolling spare-3" do
    assert BowlingGame.score([4,6,3]) == (4+6+3) + (3)
  end

  test "rolling all 5-es" do
    rolls = Enum.take(Stream.cycle([5]), 21)
    assert BowlingGame.score(rolls) == 150
  end

  test "rolling strike-2-3" do
    assert BowlingGame.score([10,2,3]) == (10+2+3) + (2+3)
  end

  test "rolling a perfect game" do
    rolls = Enum.take(Stream.cycle([10]), 12)
    assert BowlingGame.score(rolls) == 300
  end
end
