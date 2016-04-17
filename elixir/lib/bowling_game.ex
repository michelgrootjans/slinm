defmodule BowlingGame do
  def score([roll1,roll2|tail]) when roll1 + roll2 == 10 do
    roll1 + roll2 + first_roll_of(tail) + score(tail)
  end
  def score([head|tail]), do: head + score(tail)
  def score(_rolls), do: 0

  def first_roll_of([head|tail]), do: head
end
