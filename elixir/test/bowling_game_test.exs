defmodule ElixirTest do
  use ExUnit.Case
  doctest Game

  test "a new game", do: assert Game.score([]) == 0
  test "rolling 0", do: assert Game.score([0]) == 0
  test "rolling 1", do: assert Game.score([1]) == 1
  test "rolling 2", do: assert Game.score([2]) == 2
  test "rolling 1 twice", do: assert Game.score([1,1]) == 2

  test "rolling a sequence" do
    assert Game.score([1,2,3,4,5]) == (1+2+3+4+5)
  end

  test "rolling spare-3" do
    assert Game.score([4,6,3]) == (4+6+3) + (3)
  end

  test "rolling all 5-es" do
    rolls = Enum.take(Stream.cycle([5]), 21)
    assert Game.score(rolls) == 150
  end

  test "rolling strike-2-3" do
    assert Game.score([10,2,3]) == (10+2+3) + (2+3)
  end

  test "rolling a perfect game" do
    rolls = Enum.take(Stream.cycle([10]), 12)
    assert Game.score(rolls) == 300
  end
end
