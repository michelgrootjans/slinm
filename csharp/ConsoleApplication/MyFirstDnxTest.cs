using Xunit;

namespace MyFirstDnxUnitTest
{
  public class BowlingTest{
    BowlingGame game;

    public BowlingTest(){
      game = new BowlingGame();
    }

    [Fact]
    public void ANewGameScores0()
    {
      Assert.Equal(0, game.Score);
    }

    [Fact]
    public void Rolling0_Scores0()
    {
      game.Roll(0);
      Assert.Equal(0, game.Score);
    }

    [Fact]
    public void GutterGame_Scores0()
    {
      for(int i=0; i<20; i++)
        game.Roll(0);
      Assert.Equal(0, game.Score);
    }

    [Fact]
    public void Rolling1_Scores1()
    {
      game.Roll(1);
      Assert.Equal(1, game.Score);
    }

    [Fact]
    public void Rolling1_twice_Scores2()
    {
      game.Roll(1);
      game.Roll(1);
      Assert.Equal(2, game.Score);
    }

    [Fact]
    public void Rolling2_Scores2()
    {
      game.Roll(2);
      Assert.Equal(2, game.Score);
    }
  }

  public class BowlingGame {
    public int Score { get; private set; }

    public void Roll(int pins) {
      Score += pins;
    }
  }
}
