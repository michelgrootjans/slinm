class BowlingGame {
  def score(rolls: List[Int]):Int = {
    rolls match {
      case Nil => 0
      case head::tail => head
    }
  }
}
