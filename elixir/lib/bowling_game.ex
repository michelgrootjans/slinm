defmodule BowlingGame do
  def score([head|tail]), do: head + score(tail)
  def score(_rolls), do: 0
end
