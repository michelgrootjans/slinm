package bowling;

import java.util.ArrayList;
import java.util.List;

public class BowlingGame {
    private List<Integer> rolls = new ArrayList<>();

    public int getScore() {
        Integer score = 0;
        for (int frame = 1; frame < 10; frame++) {
            score += firstRollOf(frame) + secondRollOf(frame);
        }
        return score;
    }

    public void roll(int pins) {
        rolls.add(pins);
    }
}
