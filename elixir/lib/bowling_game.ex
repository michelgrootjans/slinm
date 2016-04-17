defmodule BowlingGame do
  def score([roll]), do: roll

  def score([head|tail]) do
    head + score(tail)
  end

  def score(_rolls) do
    0
  end
end
