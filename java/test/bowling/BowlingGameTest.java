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
    public void aNewGameScores0() {
        assertEquals(0, game.getScore());
    }

    @Test
    public void rolling_0() {
        game.roll(0);
        assertEquals(0, game.getScore());
    }

    @Test
    public void rolling_GutterGame() {
        for (int i = 0; i < 20; i++) {
            game.roll(0);
        }
        assertEquals(0, game.getScore());
    }

    @Test
    public void rolling_1() {
        game.roll(1);
        assertEquals(1, game.getScore());
    }

    @Test
    public void rolling_1_1() {
        game.roll(1);
        game.roll(1);
        assertEquals(2, game.getScore());
    }

    @Test
    public void rolling_spare_2() {
        game.roll(4);
        game.roll(6);
        game.roll(2);
        assertEquals(4+6+2 + 2, game.getScore());
    }

    @Test
    public void rolling_all_5es() {
        for (int i = 0; i < 21; i++) {
            game.roll(5);
        }
        assertEquals(150, game.getScore());
    }

    @Test
    public void rolling_strike_2_3() {
        game.roll(10);
        game.roll(2);
        game.roll(3);
        assertEquals(10+2+3 + 2+3, game.getScore());
    }
}
