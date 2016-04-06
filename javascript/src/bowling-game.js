var BowlingGame = function() {
  var rolls = [];

  var rollNumber = function(index){
    if (index > (rolls.length - 1)) return 0;
    return rolls[index];
  };

  var firstRollOf = function(frame){
    return rollNumber((frame-1) * 2);
  };

  var secondRollOf = function(frame){
    return rollNumber((frame-1) * 2 + 1);
  };

  var isSpare = function(frame){
    return firstRollOf(frame) + secondRollOf(frame) == 10;
  };

  var spareBonusFor = function(frame){
    return firstRollOf(frame + 1);
  };

  var scoreFor = function(frame){
    if(isSpare(frame)) return 10 + spareBonusFor(frame);
    return firstRollOf(frame) + secondRollOf(frame);
  };

  return {

    roll: function(pins){
      rolls.push(pins);
    },

    score: function() {
      var score = 0;
      for (var frame = 1; frame <= 10; frame++){
          score += scoreFor(frame);
      }
      return score;
    }

  };
};

module.exports = BowlingGame;
