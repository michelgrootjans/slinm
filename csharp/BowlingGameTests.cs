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

    [Fact]
    public void Rolling_gutter_game(){
      for (int i=0; i<20; i++) {
        game.Roll(0);
      }
      Assert.Equal(0, game.Score);
    }

    [Fact]
    public void Rolling_1(){
      game.Roll(1);
      Assert.Equal(1, game.Score);
    }
  }
}
