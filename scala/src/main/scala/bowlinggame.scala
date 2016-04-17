class BowlingGame {
  def score(rolls: List[Int]):Int = {
    rolls match {
      case roll1::roll2::tail if(roll1+roll2==10) => 10 + firstRollOf(tail) + score(tail)
      case roll1::roll2::tail => roll1 + roll2 + score(tail)
      case head::tail => head
      case Nil => 0
    }
  }

  def firstRollOf(rolls: List[Int]):Int = {
    rolls match {
      case Nil => 0
      case head::_tail => head
    }
  }
}
