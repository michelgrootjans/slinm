var BowlingGame = function () {
  var total = 0;
  var rolls = [];

  var roll  = function (pins) {
    total += pins;
    rolls.push(pins);
  };

  function rollNumber(index) {
    return rolls[index] || 0;
  }

  function firstRollOf(frame) {
    return rollNumber(((frame - 1) * 2 + 1));
  }

  function secondRollOf(frame) {
    return rollNumber(((frame - 1) * 2));
  }

  function scoreFor(frame) {
    return secondRollOf(frame) + firstRollOf(frame);
  }

  var score = function () {
    var score = 0;
    for(var frame=1; frame <= 10; frame++) {
      score += scoreFor(frame);
    }
    return score;
  };

  return { roll: roll, score: score };
};

module.exports = BowlingGame;
