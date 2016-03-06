defmodule ElixirTest do
  use ExUnit.Case
  doctest Game

  test "a new game", do: assert Game.score([]) == 0
  test "rolling 1", do: assert Game.score([1]) == 1
  test "rolling 1,1", do: assert Game.score([1,1]) == 2
  test "rolling 2", do: assert Game.score([2]) == 2

  test "rolling spare-3" do
    assert Game.score([4,6,3]) == 16
  end

  test "rolling strike-3-2" do
    assert Game.score([10,10,3,2]) == (10+10+3) + (10+3+2) +(3+2)
  end

  test "rolling all 5-es" do
    assert Game.score([5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5]) == 150
  end

  test "rolling a perfect game" do
    assert Game.score([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]) == 300
  end
end
