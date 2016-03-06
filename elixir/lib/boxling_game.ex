defmodule Game do
	def score(rolls), do: score(1, rolls)

	defp score(_frame, []), do: 0

	#stop calculating after last frame
	defp score(frame, _) when frame > 10, do: 0

	#strike
	defp score(frame, [10, y, z | rolls]) do
		10 + y + z + score(frame + 1, [ y, z | rolls])
	end

	#spare
	defp score(frame, [x, y, z | rolls]) when x + y == 10 do
		10 + z + score(frame + 1, [z | rolls])
	end

	defp score(_frame, [x]), do: x
	defp score(_frame, [x, y | rolls]), do: x + y + score(rolls)
end
