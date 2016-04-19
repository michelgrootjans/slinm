class BowlingGame {
  def score(rolls: List[Int]):Int = {
    score(1, rolls)
  }

  def score(frame: Int, rolls: List[Int]):Int = {
    frame match{
      case f if f > 10 => 0
      case _ => rolls match {
        case roll::tail         if (roll == 10)     => roll          + score(frame+1,tail) + firstRollOf(tail) + secondRollOf(tail)
        case roll1::roll2::tail if(roll1+roll2==10) => roll1 + roll2 + score(frame+1,tail) + firstRollOf(tail)
        case roll1::roll2::tail                     => roll1 + roll2 + score(frame+1,tail)
        case roll::tail                             => roll
        case Nil                                    => 0
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
