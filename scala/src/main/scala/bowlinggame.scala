class BowlingGame {
   def score(rolls: List[Int]):Int = {
     rolls match {
       case Nil => 0
       case roll1::roll2::tail if(roll1 + roll2 == 10) => 10 + first_roll_of(tail) + score(tail)
       case head::tail => head + score(tail)
     }
   }

   def first_roll_of(rolls: List[Int]):Int = {
     rolls match {
       case Nil => 0
       case head::tail => head
     }
   }
}
