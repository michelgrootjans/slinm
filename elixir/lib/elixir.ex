defmodule Game do
	def score([]), do: 0

	def score([[10] | other_frames]) do 
		10 + next_two_rolls_of(other_frames) + score(other_frames)
	end

	def score([[roll_1, roll_2] | other_frames]) when roll_1 + roll_2 == 10 do 
		10 + next_roll_of(other_frames) + score(other_frames)
	end

	def score([[roll_1, roll_2] | other_frames]) do
		roll_1 + roll_2 + score(other_frames)
	end

	defp next_roll_of([[roll | _ ] | _] ), do: roll

  defp next_two_rolls_of([frame | _ ]) do
      score([frame])
  end
end
