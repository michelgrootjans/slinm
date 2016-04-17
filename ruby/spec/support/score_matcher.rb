RSpec::Matchers.define :score do |expected_score|
  match do |game|
    game.score == expected_score
  end
end
