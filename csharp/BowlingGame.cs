namespace BowlingGame {
  public class BowlingGame{
    public int Score { get; private set; }

    public void Roll(params int[] rolls) {
      foreach(int roll in rolls){
        Score += roll;
      }
    }

  }
}
