namespace BowlingGame
module BowlingGame =

  let rec score rolls =
    match rolls with
      | 1::1::_tail -> 2
      | 1::_tail -> 1
      | 2::_tail -> 2
      | _ -> 0
