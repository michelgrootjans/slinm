using Xunit;

namespace BowlingGame
{
  public class BowlingTest{
    [Fact]
    public void ANewGameScores0()
    {
      Assert.Equal(0, new BowlingGame().Score);
    }
  }
}
