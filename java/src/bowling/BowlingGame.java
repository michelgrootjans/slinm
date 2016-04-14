package bowling;

public class BowlingGame {
    private int score;

    public int getScore() {
        return score;
    }

    public void roll(int pins) {
        score += pins;
    }
}
