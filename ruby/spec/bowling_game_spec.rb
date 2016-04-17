require 'bowling_game'
require 'rspec/its'
require 'support/score_matcher'

describe BowlingGame do

  subject(:game) {BowlingGame.new}

  context 'a new game' do
    it{ is_expected.to score 0 }
  end

  context 'rolling 0' do
    before{ game.roll 0 }
    it{ is_expected.to score 0 }
  end

  context 'rolling 1' do
    before{ game.roll 1 }
    it{ is_expected.to score 1 }
  end

end
