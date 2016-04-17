using Xunit;

namespace BowlingGame
{
  public class BowlingTest{
    BowlingGame game;

    public BowlingTest(){
      game = new BowlingGame();
    }

    [Fact]
    public void ANewGameScores0(){
      Assert.Equal(0, game.Score);
    }

    [Fact]
    public void Rolling_0(){
      game.Roll(0);
      Assert.Equal(0, game.Score);
    }
  }
}
