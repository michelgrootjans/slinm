require 'bowling_game'
require 'support/score_matcher'

describe BowlingGame do
  let(:game){ subject }
  context 'a new game' do
    it { is_expected.to score 0 }
  end

  context 'rolling 0' do
    before{ game.roll 0 }
    it { is_expected.to score 0 }
  end

  context 'rolling 1' do
    before{ game.roll 1 }
    it { is_expected.to score 1 }
  end

  context 'rolling 1 twice' do
    before{ game.roll 1, 1 }
    it { is_expected.to score 2 }
  end

  context 'rolling spare-3' do
    before {
      game.roll 4, 6 # spare
      game.roll 3
    }
    it { is_expected.to score (4+6+3) + (3) }
  end

  context 'rolling all 5-es' do
    before {
      10.times{ game.roll(5,5)}
      game.roll 5 #extra roll when last frame is a spare
    }
    it { is_expected.to score 150 }
  end

  context 'rolling strike-3-4' do
    before {
      game.roll 10 # strike
      game.roll 3, 4
    }
    it { is_expected.to score (10+3+4) + (3+4) }
  end

  context 'rolling a perfect game' do
    before {
      10.times{ game.roll 10 }
      game.roll 10 # extra 2 rolls when last frame is a strike
      game.roll 10
    }
    it { is_expected.to score 300 }
  end
end
