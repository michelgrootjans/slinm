namespace BowlingGame
module BowlingGame =

  let rec score rolls =
    match rolls with
      | roll1::roll2::tail when roll1+roll2=10 -> roll1 + roll2 + score(tail)
      | head::tail -> head + score(tail)
      | _ -> 0
