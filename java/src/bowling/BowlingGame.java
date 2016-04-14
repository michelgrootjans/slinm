package bowling;

import java.util.ArrayList;
import java.util.List;

public class BowlingGame {
    private int score;
    private List<Integer> rolls = new ArrayList<>();

    public int getScore() {
        return score;
    }

    public void roll(int pins) {
        if(score == 10) score += pins;
        score += pins;
    }
}
