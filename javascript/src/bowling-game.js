var BowlingGame = function() {
  var rolls = [];

  var roll = function(pins){ rolls.push(pins); };

  var score = function() {
    var score = 0;
    for (var frame = 1; frame <= 10; frame++){
      score += scoreFor(frame);
    }
    return score;
  };

  function baseScoreFor(frame) {
    return firstRollOf(frame) + secondRollOf(frame);
  }

  var scoreFor = function(frame){
    if( isSpare(frame))
      return baseScoreFor(frame) + spareBonusFor(frame);
    return baseScoreFor(frame);
  };

  var isSpare = function(frame){
    return firstRollOf(frame) + secondRollOf(frame) == 10;
  };

  var spareBonusFor = function(frame){
    return firstRollOf(frame + 1);
  };

  var firstRollOf = function(frame){
    return rolls[(frame-1) * 2] || 0;
  };

  var secondRollOf = function(frame){
    return rolls[(frame-1) * 2 + 1] || 0;
  };

  return { roll: roll, score: score };
};

module.exports = BowlingGame;
