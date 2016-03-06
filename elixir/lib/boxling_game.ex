defmodule Game do
  def score(rolls), do: score(1, rolls)

  #stop calculating frame score after frame 10
  defp score(frame, _) when frame > 10, do: 0

  #spare
  defp score(frame, [roll1, roll2, roll3 | tail]) when roll1 + roll2 == 10 do
    10 + roll3 + score(frame+1, [roll3|tail])
  end

  #strike
  defp score(frame, [10, roll2, roll3 | tail]) do
    10 + roll2 + roll3 + score(frame+1, [roll2,roll3|tail])
  end

  defp score(frame, [head|tail]), do: head + score(frame+1, tail)
  defp score(_frame, []), do: 0
end
