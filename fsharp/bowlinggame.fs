namespace BowlingGame
module BowlingGame =

  let first_roll_of rolls =
    match rolls with
      | head::_tail -> head
      | _ -> 0

  let rec score rolls =
    match rolls with
      | roll1::roll2::tail when roll1+roll2=10 -> roll1 + roll2 + first_roll_of(tail) + score(tail)
      | head::tail -> head + score(tail)
      | _ -> 0
