defmodule ElixirTest do
  use ExUnit.Case
  doctest Game

  test "a new game", do: assert Game.score([]) == 0
  test "a zero frame", do: assert Game.score([[0,0]]) == 0

  test "a gutter game" do
    assert Game.score([[0,0],[0,0],[0,0],[0,0]]) == 0
  end

  test "a simple spare" do
  	assert Game.score([[3,7], [2,3]]) == (3+7+2) + (2+3)
  end

  test "a simple strike" do
  	assert Game.score([[10], [2,3]]) == (10+2+3) + (2+3)
  end

end
