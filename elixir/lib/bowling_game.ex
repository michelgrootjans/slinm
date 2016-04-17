defmodule BowlingGame do
  def score(rolls), do: score(1, rolls)
  def score(_, [roll1,roll2|tail]) when roll1 + roll2 == 10 do
    roll1 + roll2 + first_roll_of(tail) + score(tail)
  end
  def score(_, [head|tail]), do: head + score(tail)
  def score(_, _rolls), do: 0

  def first_roll_of([head|tail]), do: head
end
