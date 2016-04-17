class BowlingGame
  attr_reader :rolls
  def initialize
    @rolls = []
  end

  def roll *rolls
    rolls.each { |roll| @rolls << roll }
  end

  def score
    (1..10).reduce(0) do |score, frame|
      score + score_for(frame)
    end
  end

  def score_for frame
    return 10 + strike_bonus_for(frame) if strike? frame
    return 10 + spare_bonus_for(frame) if spare? frame
    first_roll_of(frame) + second_roll_of(frame)
  end

  def strike? frame
    first_roll_of(frame) == 10
  end

  def strike_bonus_for frame
    first_roll_of(frame + 1) + second_roll_of(frame + 1)
  end

  def spare? frame
    first_roll_of(frame) + second_roll_of(frame) == 10
  end

  def spare_bonus_for frame
    first_roll_of(frame + 1)
  end

  def first_roll_of frame
    @rolls[(frame-1)*2] || 0
  end

  def second_roll_of frame
    @rolls[(frame-1)*2 + 1] || 0
  end
end
