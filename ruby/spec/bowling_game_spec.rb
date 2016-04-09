require 'bowling_game'
require 'rspec/its'
require 'support/score_matcher'

describe BowlingGame do
  context 'a new game' do
    it { expect(BowlingGame.new.score).to eq 0 }
  end
end
