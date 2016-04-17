defmodule BowlingGame do
  def score([roll1,roll2,roll3|tail]) when roll1 + roll2 == 10 do
    roll1 + roll2 + roll3 + score([roll3|tail])
  end
  def score([head|tail]), do: head + score(tail)
  def score(_rolls), do: 0
end
