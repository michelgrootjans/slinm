namespace BowlingGame
module BowlingGame =

  open Xunit

  let score(rolls: int list) =
      0

  type BowlingGameTests() =
    [<Fact>]
    member x.``a new game``() =
        Assert.Equal(0,score [])

    [<Fact>]
    member x.``rolling 0 scores 0``() =
        Assert.Equal(0,score [0])
