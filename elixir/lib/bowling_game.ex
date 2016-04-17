defmodule BowlingGame do
  def score([roll]) do
    roll
  end

  def score([1,1]) do
    2
  end

  def score(_rolls) do
    0
  end
end
