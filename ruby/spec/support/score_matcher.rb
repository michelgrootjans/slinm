RSpec::Matchers.define :score do |expected_score|
  match do |game|
    game.score == expected_score
  end

  failure_message do |game|
    "expected game to score #{expected_score}, but it scored #{game.score}\r\n" +
    "state was: #{game.rolls}"
  end
end
