class BowlingGame
  attr_reader :score

  def initialize
    @score = 0
  end

  def roll pins
    @score += pins
  end
end
