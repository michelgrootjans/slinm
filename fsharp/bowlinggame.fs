namespace BowlingGame
module BowlingGame =

  let rec score rolls =
    match rolls with
      | head::tail -> head + score(tail)
      | _ -> 0
