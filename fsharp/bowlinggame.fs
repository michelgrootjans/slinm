namespace BowlingGame
module BowlingGame =

  let first_roll_of rolls =
    match rolls with
      | head::_tail -> head
      | _ -> 0

  let rec score_for frame rolls =
    match rolls with
      | roll1::roll2::tail when roll1+roll2=10 -> roll1 + roll2 + first_roll_of(tail) + score_for(frame)(tail)
      | head::tail -> head + score_for(frame)(tail)
      | _ -> 0

  let score rolls =
    score_for 1 rolls
