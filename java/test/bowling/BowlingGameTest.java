package bowling;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BowlingGameTest {
    private BowlingGame game;

    @Before
    public void setup() {
        game = new BowlingGame();
    }

    @Test
    public void ANewGameScores0() {
        assertEquals(0, game.getScore());
    }

    @Test
    public void Rolling_0() {
        game.roll(0);
        assertEquals(0, game.getScore());
    }

    @Test
    public void Rolling_GutterGame() {
        for (int i = 0; i < 20; i++) {
            game.roll(0);
        }
        assertEquals(0, game.getScore());
    }

    @Test
    public void Rolling_1() {
        game.roll(1);
        assertEquals(1, game.getScore());
    }
}
