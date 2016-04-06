namespace BowlingGame
module BowlingGame =

  open Xunit
  let first_roll_of rolls =
    match rolls with
      | head::tail -> head
      | head -> 0

  let rec score_for frame rolls =
    match rolls with
      | _ when frame > 10 -> 0
      | roll1::roll2::tail when (roll1 + roll2 = 10) -> roll1 + roll2 + score_for(frame+1)(tail) + first_roll_of(tail)
      | roll1::roll2::tail                           -> roll1 + roll2 + score_for(frame+1)(tail)
      | roll::tail -> roll
      | _          -> 0

  let rec score rolls =
    score_for 1 rolls

  type BowlingGameTests() =
    [<Fact>]
    member x.``a new game``() =
        Assert.Equal(0,score [])

    [<Fact>]
    member x.``rolling 0``() =
        Assert.Equal(0,score [0])

    [<Fact>]
    member x.``rolling 1``() =
        Assert.Equal(1,score [1])

    [<Fact>]
    member x.``rolling 1 twice``() =
        Assert.Equal(2,score [1;1])

    [<Fact>]
    member x.``rolling 2``() =
        Assert.Equal(2,score [2])

    [<Fact>]
    member x.``rolling spare-2``() =
        Assert.Equal(6+4+2 + 2,score [6;4;2])

    [<Fact>]
    member x.``rolling only fives``() =
        Assert.Equal(150,score [5;5; 5;5; 5;5; 5;5; 5;5; 5;5; 5;5; 5;5; 5;5; 5;5; 5])
