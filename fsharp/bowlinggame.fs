namespace BowlingGame
module BowlingGame =

  let first_roll_of rolls =
    match rolls with
      | head::_tail -> head
      | _ -> 0

  let second_roll_of rolls =
    match rolls with
      | _head::tail -> first_roll_of(tail)
      | _ -> 0

  let rec score_for frame rolls =
    match rolls with
      | _ when frame > 10 -> 0
      | 10::tail -> 10 + first_roll_of(tail) + second_roll_of(tail) + score_for(frame+1)(tail)
      | roll1::roll2::tail when roll1+roll2=10 -> roll1 + roll2 + first_roll_of(tail) + score_for(frame+1)(tail)
      | head::tail -> head + score_for(frame+1)(tail)
      | _ -> 0

  let score rolls =
    score_for 1 rolls
