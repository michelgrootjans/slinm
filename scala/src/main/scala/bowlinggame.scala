class BowlingGame {
  def score(rolls: List[Int]):Int = {
    rolls match {
      case Nil => 0
      case 0::tail => 0
      case 1::tail => 1
      case head::tail => head
    }
  }
}
