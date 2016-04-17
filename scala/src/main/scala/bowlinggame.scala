class BowlingGame {
  def score(rolls: List[Int]):Int = {
    score(1, rolls)
  }

  def score(frame: Int, rolls: List[Int]):Int = {
    frame match{
      case f if f > 10 => 0
      case _ => rolls match {
        case roll::tail if(roll==10) => 10 + firstRollOf(tail) + secondRollOf(tail) + score(frame+1,tail)
        case roll1::roll2::tail if(roll1+roll2==10) => 10 + firstRollOf(tail) + score(frame+1,tail)
        case roll1::roll2::tail => roll1 + roll2 + score(frame+1,tail)
        case head::tail => head
        case Nil => 0
      }
    }
  }

  private def firstRollOf(rolls: List[Int]):Int = {
    rolls match {
      case Nil => 0
      case head::_tail => head
    }
  }
  
  private def secondRollOf(rolls: List[Int]):Int = {
    rolls match {
      case Nil => 0
      case _head::tail => firstRollOf(tail)
    }
  }
}
