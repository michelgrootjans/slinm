defmodule Game do
  def score([frame]) do
    Enum.reduce(frame, 0, fn(x, acc) -> x + acc end)
  end

  def score([[10] | rest]) do
    10 + next_two_rolls(rest) + score(rest)
  end

  def score([[roll1, roll2] | rest]) when roll1 + roll2 == 10 do
    10 + next_roll(rest) + score(rest)
  end

  def score([[roll1, roll2] | rest]) do
    score([[roll1, roll2]]) + score(rest)
  end

  def next_roll([[first_roll | _] | _]) do
    first_roll
  end

  def next_two_rolls([[10] | rest]) do
    10 + next_roll(rest)
  end

  def next_two_rolls([[roll1, roll2, _]]) do
    roll1 + roll2
  end

  def next_two_rolls([frame | _]) do
    score([frame])
  end
end
 
defmodule ElixirSlinmTest do
  use ExUnit.Case

  test "gutter rolls" do
    assert 0 == Game.score([[0,0]])
  end

  test "first normal frame" do
    assert 5 == Game.score([[2,3]])
  end

  test "second normal frame" do
    assert (5+7) == Game.score([[2,3], [3, 4]])
  end

  test "spare with normal " do
    assert ((3+7+2) + (2+3)) == Game.score([[3,7], [2,3]])
  end

  test "two spares" do
    assert 30 == Game.score([[5,5], [5,5,5]])
  end

  test "simple strike" do
    assert (10+2+3) + (2+3) == Game.score([[10], [2,3]])
  end

  test "two strikes" do
    assert (10+10+2) + (10+2+3) + (2+3) == Game.score([[10], [10], [2,3]])
  end

  test "perfect game" do
    assert 300 = Game.score([[10], [10], [10], [10], [10], [10], [10], [10], [10], [10, 10, 10]])
  end
end
