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
}
