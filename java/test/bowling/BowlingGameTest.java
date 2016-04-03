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
    public void rolling0Scores0() {
        game.roll(0);
        assertEquals(0, game.getScore());
    }

    @Test
    public void rolling1Scores1() {
        game.roll(1);
        assertEquals(1, game.getScore());
    }

    @Test
    public void rolling1TwiceScores2() {
        game.roll(1, 1);
        assertEquals(2, game.getScore());
    }

    @Test
    public void rolling_Spare_2_3_scores_17() {
        game.roll(4, 6);
        game.roll(2, 3);
        assertEquals((4+6+2) + (2+3), game.getScore());
    }

    @Test
    public void rolling_all_fives_scores_150() {
        for (int frame = 1; frame <= 10; frame++) {
            game.roll(5,5);
        }
        game.roll(5); // extra roll after last spare frame
        assertEquals(10*15, game.getScore());
    }

    @Test
    public void rolling_Strike_2_3_scores_20() {
        game.roll(10);
        game.roll(2, 3);
        assertEquals((10+2+3) + (2+3), game.getScore());
    }

    @Test
    public void rolling_Strike_Strike_2_3_scores_20() {
        game.roll(10);
        game.roll(10);
        game.roll(2, 3);
        assertEquals((10+10+2) + (10+2+3) + (2+3), game.getScore());
    }

    @Test
    public void aPerfectGameScores300() {
        for (int frame = 1; frame <= 10; frame++) {
            game.roll(10);
        }
        game.roll(10); // extra two rolls after last strike frame
        game.roll(10);
        assertEquals(10*30, game.getScore());
    }


}
