namespace BowlingGame
module BowlingGame =

  let rec score rolls =
    match rolls with
      | 1::_tail -> 1
      | _ -> 0
