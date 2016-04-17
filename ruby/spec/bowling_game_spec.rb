require 'bowling_game'
require 'rspec/its'
require 'support/score_matcher'

describe BowlingGame do

  let(:game) {BowlingGame.new}

  context 'a new game' do
    it { expect(game.score).to eq 0 }
  end

  context 'rolling 0' do
    it do
      game.roll(0)
      expect(game.score).to eq 0
    end
  end

end
