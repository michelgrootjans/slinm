defmodule BowlingGame do
  def score(rolls), do: score(1, rolls)

  defp score(frame, _) when frame > 10, do: 0

  defp score(frame, [roll1,roll2|tail]) when roll1 + roll2 == 10 do
    roll1 + roll2 + first_roll_of(tail) + score(frame+1, tail)
  end

  defp score(frame, [10|tail]) do
    10 + first_roll_of(tail) + second_roll_of(tail) + score(frame+1, tail)
  end

  defp score(frame, [head|tail]), do: head + score(frame+1, tail)
  defp score(_frame, _rolls), do: 0

  defp  first_roll_of([head|tail]), do: head
  defp second_roll_of([head|tail]), do: first_roll_of(tail)
end
