var BowlingGame = function() {
  var rolls = [];

  var roll = function(pins){
    rolls.push(pins);
    if(pins == 10) rolls.push(0);
  };

  var score = function() {
    var score = 0;
    for (var frame = 1; frame <= 10; frame++){
      score += scoreFor(frame);
    }
    return score;
  };

  var scoreFor = function(frame){
    if (isStrike(frame)) return baseScoreFor(frame) + strikeBonusFor(frame);
    if  (isSpare(frame)) return baseScoreFor(frame) +  spareBonusFor(frame);
    else                 return baseScoreFor(frame);
  };

  var isStrike = function(frame){
    return firstRollOf(frame) == 10;
  };

  var strikeBonusFor = function(frame){
    return firstRollOf(frame + 1) + secondRollOf(frame + 1);
  };

  var isSpare = function(frame){
    return baseScoreFor(frame) == 10;
  };

  var spareBonusFor = function(frame){
    return firstRollOf(frame + 1);
  };

  function baseScoreFor(frame) {
    return firstRollOf(frame) + secondRollOf(frame);
  }

  var firstRollOf = function(frame){
    return rolls[(frame-1) * 2] || 0;
  };

  var secondRollOf = function(frame){
    return rolls[(frame-1) * 2 + 1] || 0;
  };

  return { roll: roll, score: score };
};

module.exports = BowlingGame;
