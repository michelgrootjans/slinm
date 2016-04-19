namespace BowlingGame

  open Xunit
  open BowlingGame

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
    member x.``rolling 1-1``() =
        Assert.Equal(2,score [1;1])

    [<Fact>]
    member x.``rolling spare-2``() =
        Assert.Equal(4+6+2 + 2,score [4;6;2])

    [<Fact>]
    member x.``rolling all fives``() =
        let rolls = [for n in 1..21 -> 5]
        Assert.Equal(150,score rolls)

    [<Fact>]
    member x.``rolling strike-2-3``() =
        Assert.Equal(10+2+3 + 2+3,score [10;2;3])

    [<Fact>]
    member x.``rolling strike-strike-2-3``() =
        Assert.Equal(10+10+2 + 10+2+3 + 2+3,score [10;10;2;3])

    [<Fact>]
    member x.``rolling a perfect game``() =
        let rolls = [for n in 1..12 -> 10]
        Assert.Equal(300,score rolls)
