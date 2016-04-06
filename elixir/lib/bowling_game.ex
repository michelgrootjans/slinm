defmodule BowlingGame do
  def score(rolls), do: score(1, rolls)

  #stop calculating frame score after frame 10
  defp score(frame, _) when frame > 10, do: 0

  #spare
  defp score(frame, [roll1, roll2 | tail]) when roll1 + roll2 == 10 do
    10 + first_roll_of(tail) + score(frame+1, tail)
  end

  #strike
  defp score(frame, [10|tail]) do
    10 + first_roll_of(tail) + second_roll_of(tail) + score(frame+1, tail)
  end

  defp score(frame, [head|tail]), do: head + score(frame+1, tail)
  defp score(_frame, []), do: 0

  defp first_roll_of([head|_]), do: head
  defp second_roll_of([_|tail]), do: first_roll_of(tail)
end
