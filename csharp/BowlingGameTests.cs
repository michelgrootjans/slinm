using Xunit;

namespace BowlingGame
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
      for(int i=0; i<10; i++)
        game.Roll(0, 0);
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
      game.Roll(1, 1);
      Assert.Equal(2, game.Score);
    }

    [Fact]
    public void Rolling2_Scores2()
    {
      game.Roll(2);
      Assert.Equal(2, game.Score);
    }

    [Fact]
    public void Rolling_spare_3_Scores16()
    {
      game.Roll(4);
      game.Roll(6);
      game.Roll(3);
      Assert.Equal((4+6+3) + (3), game.Score);
    }

    [Fact]
    public void Rolling_All_Fives()
    {
      for(var frame = 1; frame <= 10; frame++){
          game.Roll(5, 5);
      }
      game.Roll(5); // last roll because of last spare
      Assert.Equal(150, game.Score);
    }

    [Fact]
    public void Rolling_Strike_2_3()
    {
      game.Roll(10);
      game.Roll(2, 3);
      Assert.Equal((10+2+3) + (2+3), game.Score);
    }

    [Fact]
    public void Rolling_Perfect_Game()
    {
      for(var frame = 1; frame <= 10; frame++){
          game.Roll(10);
      }
      game.Roll(10); // last two rolls because last frame was a strike
      game.Roll(10);
      Assert.Equal(300, game.Score);
    }
  }
}
