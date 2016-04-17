class BowlingGame
  attr_reader :score

  def initialize
    @score = 0
  end

  def roll *rolls
    rolls.each do |pins|
      @score += pins
    end
  end
end
