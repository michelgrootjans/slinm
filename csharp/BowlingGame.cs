using System.Linq;
using System.Collections.Generic;

namespace BowlingGame {
  public class BowlingGame{
    private readonly IList<int> rolls = new List<int>();

    public void Roll(params int[] frame) {
      foreach(var roll in frame)
      {
        rolls.Add(roll);
        if(roll == 10) rolls.Add(0);
      }
    }

    public int Score {
      get
      {
        return Enumerable.Range(1, 10)
                         .Select(frame => ScoreFor(frame))
                         .Sum();
      }
    }

    private int ScoreFor(int frame){
      if(IsStrike(frame)) return 10 + StrikeBonusFor(frame);
      if(IsSpare (frame)) return 10 +  SpareBonusFor(frame);
      return FirstRollOf(frame) + SecondRollOf(frame);
    }

    private bool IsStrike(int frame){
      return FirstRollOf(frame) == 10;
    }

    private int StrikeBonusFor(int frame){
      if(IsStrike(frame+1))
        return FirstRollOf(frame+1) + FirstRollOf(frame+2);
      return FirstRollOf(frame+1) + SecondRollOf(frame + 1);
    }

    private bool IsSpare(int frame){
      return FirstRollOf(frame) + SecondRollOf(frame) == 10;
    }

    private int SpareBonusFor(int frame){
      return FirstRollOf(frame + 1);
    }

    private int FirstRollOf(int frame){
      return Roll((frame-1)*2);
    }

    private int SecondRollOf(int frame){
      return Roll((frame-1)*2 + 1);
    }

    private int Roll(int index){
      if (index > rolls.Count - 1) return 0;
      return rolls[index];
    }
  }
}
