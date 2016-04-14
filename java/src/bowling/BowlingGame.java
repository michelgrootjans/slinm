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
        for (int frame = 1; frame <= 10; frame++) {
            score += scoreFor(frame);
        }
        return score;
    }

    private int scoreFor(int frame) {
        if (isStrike(frame)) return 10 + strikeBonusOf(frame);
        if (isSpare(frame)) return 10 + spareBonusOf(frame);
        return defaultScoreOf(frame);
    }

    private boolean isStrike(int frame) {
        return false;
    }

    private Integer strikeBonusOf(int frame) {
        return 0;
    }

    private boolean isSpare(int frame) {
        return defaultScoreOf(frame) == 10;
    }

    private Integer spareBonusOf(int frame) {
        return firstRollOf(frame+1);
    }

    private int defaultScoreOf(int frame) {
        return firstRollOf(frame) + secondRollOf(frame);
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
