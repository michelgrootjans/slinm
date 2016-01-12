defmodule Game do

    def score([]), do: 0

    def score([frame | []]) do
        Enum.reduce(frame, 0, fn(x, acc) -> x + acc end)
    end

    def score([[10, _] | rest]) do
        10 + next_two_rolls_of(rest) + score(rest)
    end

    def score([[roll1, roll2] | rest]) when roll1 + roll2 == 10 do
        10 + next_roll_of(rest) + score(rest)
    end

    def score([frame | rest]) do
        score([frame]) + score(rest)
    end

    defp next_roll_of([[roll | _ ] | _ ]) do
        roll
    end

    defp next_two_rolls_of([[10, _ ], [roll, _] | _ ]) do
        10 + roll
    end

    defp next_two_rolls_of([frame | _ ]) do
        score([frame])
    end

end

defmodule BowlingGame do
  use ExUnit.Case

  test "a clean new game", do: assert Game.score([]) == 0
  test "an empty frame",   do: assert Game.score([[0,0]]) == 0
  test "an valid frame",   do: assert Game.score([[2,3]]) == (2+3)
  test "two valid frames", do: assert Game.score([[1,2], [1,2]]) == (1+2+1+2)

  test "a spare counts the next roll double" do
    assert Game.score([[3,7], [4,3]]) == (3+7+(2*4)+3)
  end

  test "all fives scores 150" do
    assert Game.score([[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5],[5,5,5]]) == 150
  end

  test "a strike counts the next two rolls double" do
    assert Game.score([[10,0], [4,3]]) == ((10+4+3)+(4+3))
  end

  test "two strikes count the next two rolls double" do
    assert Game.score([[10,0], [10,0], [3,4]]) == ((10 + 10 + 3) + (10 + 3 + 4) + (3 + 4))
  end

  test "a perfect game scores 300" do
    assert Game.score([[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,0],[10,10, 10]]) == 300
  end
end