namespace BowlingGame
module BowlingGame =

  open Xunit

  let rec score rolls =
    match rolls with
    | x::y::rest -> x + y + score rest
    | x::y       -> x + y
    | [x]        -> x
    | _          -> 0

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
    member x.``rolling 1, 2, 3``() =
        Assert.Equal(6,score [1;2;3])
