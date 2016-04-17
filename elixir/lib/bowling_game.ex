defmodule BowlingGame do
  def score([roll]), do: roll

  def score([head|tail]), do: head + score(tail)

  def score(_rolls) do
    0
  end
end
