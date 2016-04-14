package bowling;

import java.util.ArrayList;
import java.util.List;

public class BowlingGame {
    private List<Integer> rolls = new ArrayList<>();

    public void roll(int pins) {
        rolls.add(pins);
    }

    public int getScore() {
        Integer score = 0;
        for (int frame = 1; frame < 10; frame++) {
            score += firstRollOf(frame) + secondRollOf(frame);
        }
        return score;
    }

    private Integer firstRollOf(int frame) {
        return rollNumber((frame - 1) * 2);
    }

    private Integer secondRollOf(int frame) {
        return rollNumber((frame - 1) * 2 + 1);
    }

    private Integer rollNumber(int index) {
        if(index + 1 > rolls.size()) return 0;
        return rolls.get(index);
    }
}
