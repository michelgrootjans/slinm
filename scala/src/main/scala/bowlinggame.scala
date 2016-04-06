class BowlingGame {
   def score(rolls: List[Int]):Int = {
     score(1, rolls)
   }

   private def score(frame: Int, rolls: List[Int]):Int = {
     frame match {
       case f if f > 10 => 0
       case _ => rolls match {
         case Nil => 0
         case roll1::tail if(roll1 == 10) => 10 + first_roll_of(tail) + second_roll_of(tail) + score(frame + 1, tail)
         case roll1::roll2::tail if(roll1 + roll2 == 10) => 10 + first_roll_of(tail) + score(frame + 1, tail)
         case head::tail => head + score(frame + 1, tail)
        }
     }
   }

   private def first_roll_of(rolls: List[Int]):Int = {
     rolls match {
       case Nil => 0
       case head::tail => head
     }
   }

   private def second_roll_of(rolls: List[Int]):Int = {
     rolls match {
       case Nil => 0
       case head::tail => first_roll_of(tail)
     }
   }
}
