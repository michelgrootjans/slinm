package bowling;

import java.util.ArrayList;
import java.util.List;

public class BowlingGame {
    private List<Integer> rolls = new ArrayList<>();

    public void roll(Integer... frame) {
        for (Integer roll : frame) {
            rolls.add(roll);
            if(roll==10) rolls.add(0);
        }
    }

    public int getScore() {
        int score = 0;
        for (int frame = 1; frame <= 10; frame++) {
            score += scoreFor(frame);
        }
        return score;
    }

    private Integer scoreFor(int frame) {
        if(isStrike(frame)) return 10 + strikeBonusFor(frame);
        if( isSpare(frame)) return 10 +  spareBonusFor(frame);
        return firstRollOf(frame) + secondRollOf(frame);
    }

    private boolean isStrike(int frame) {
        return firstRollOf(frame) == 10;
    }

    private int strikeBonusFor(int frame) {
        if(isStrike(frame+1))
            return firstRollOf(frame+1) + firstRollOf(frame+2);
        return firstRollOf(frame+1) + secondRollOf(frame+1);
    }

    private boolean isSpare(int frame) {
        return firstRollOf(frame) + secondRollOf(frame) == 10;
    }

    private int spareBonusFor(int frame) {
        return firstRollOf(frame+1);
    }

    private Integer firstRollOf(int frame) {
        return roll((frame-1)*2);
    }

    private Integer secondRollOf(int frame) {
        return roll((frame-1)*2 + 1);
    }

    private Integer roll(int index){
        if (index > rolls.size() - 1) return 0;
        return rolls.get(index);
    }
}
