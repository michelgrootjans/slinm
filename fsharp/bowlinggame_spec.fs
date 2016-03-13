namespace BowlingGame
module BowlingGame =

  open Xunit

  let rec score_for(rolls: int list) =
    rolls.Head + score_for(rolls.Tail)

  let score(rolls: int list) =
    match rolls with
    | Null -> 0
    | frame::rest
      -> rolls.Head + score_for(rolls.Tail)

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
      member x.``rolling 2``() =
          Assert.Equal(2,score [2])

      [<Fact>]
      member x.``rolling 1 twice``() =
          Assert.Equal(2,score [1;1])
