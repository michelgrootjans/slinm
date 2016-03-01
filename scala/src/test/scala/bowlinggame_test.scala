import org.scalatest.{FunSuite, BeforeAndAfter}

class BowlingGameTest extends FunSuite with BeforeAndAfter {
  var game: BowlingGame = _

  before {
    game = new BowlingGame
  }

    test("a new game scores 0"){
      assert(0 === game.score(List()))
    }

    test("rolling 0 scores 0"){
      assert(0 === game.score(List(0)))
    }

    test("rolling 1 scores 1"){
      assert(1 === game.score(List(1)))
    }

    test("rolling 2 scores 2"){
      assert(2 === game.score(List(2)))
    }

    test("rolling 1 twice scores 2"){
      assert(2 === game.score(List(1,1)))
    }

    test("rolling spare-3 scores 16"){
      assert(16 === game.score(List(4,6,3)))
    }
}
