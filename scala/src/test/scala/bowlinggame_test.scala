import org.scalatest.{FunSuite, BeforeAndAfter}

class BowlingGameTest extends FunSuite with BeforeAndAfter {
  var game: BowlingGame = _

  before { game = new BowlingGame }

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
    assert((4+6+3 + 3) === game.score(List(4,6,3)))
  }

  test("rolling all 5-es scores 150"){
    assert(150 === game.score(List.fill(21)(5)))
  }

  test("rolling strike scores 10"){
    assert(10 === game.score(List(10)))
  }

  test("rolling strike-2 scores 14"){
    assert(10+2 + 2 === game.score(List(10,2)))
  }

  test("rolling strike-2-3 scores 20"){
    assert(10+2+3 + 2+3 === game.score(List(10,2,3)))
  }

  test("rolling strike-strike-2-3 scores 42"){
    assert(10+10+2 + 10+2+3 + 2+3 === game.score(List(10,10,2,3)))
  }

  test("rolling a perfect game scores 300"){
    assert(300 === game.score(List.fill(12)(10)))
  }
}
