import org.scalatest.{FunSuite, BeforeAndAfter}

class BowlingGameTest extends FunSuite with BeforeAndAfter {
  var game: BowlingGame = _

  before { game = new BowlingGame }

  test("a new game scores 0"){
    assert(0 === game.score(List()))
  }

  test("rolling 0"){
    assert(0 === game.score(List(0)))
  }

  test("rolling gutter game"){
    assert(0 === game.score(List.fill(20)(0)))
  }

  test("rolling 1"){
    assert(1 === game.score(List(1)))
  }

  test("rolling spare-2"){
    assert(4+6+2 + 2 === game.score(List(4,6,2)))
  }

  test("rolling all fives"){
    assert(150 === game.score(List.fill(21)(5)))
  }

  test("rolling strike-2-3"){
    assert(10+2+3 + 2+3 === game.score(List(10,2,3)))
  }

  test("rolling strike-strike-2-3"){
    assert(10+10+2 + 10+2+3 + 2+3 === game.score(List(10,10,2,3)))
  }

  test("rolling a perfect game"){
    assert(300 === game.score(List.fill(12)(10)))
  }
}
