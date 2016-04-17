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
}
