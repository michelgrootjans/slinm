using System.Linq;
using System.Collections.Generic;

namespace BowlingGame {
  public class BowlingGame{
    public void Roll(int pins){
      Score = pins;
    }
    public int Score{get; private set;}
  }
}
