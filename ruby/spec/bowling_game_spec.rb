require 'bowling_game'
require 'rspec/its'
require 'support/score_matcher'

describe BowlingGame do

  subject(:game) {BowlingGame.new}

  context 'a new game' do
    its(:score){ is_expected.to eq 0 }
  end

  context 'rolling 0' do
    before{ game.roll(0) }
    it 'scores 0' do
      expect(game.score).to eq 0
    end
  end

end
