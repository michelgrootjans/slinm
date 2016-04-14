package bowling;

import java.util.ArrayList;
import java.util.List;

public class BowlingGame {
    private List<Integer> rolls = new ArrayList<>();

    public int getScore() {
        Integer score = 0;
        for (int i = 0; i < 20; i++) {
            score += rolls.get(i);
        }
        return score;
    }

    public void roll(int pins) {
        rolls.add(pins);
    }
}
