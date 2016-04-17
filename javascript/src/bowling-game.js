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

  var score = function () {
    var score = 0;
    for(var frame=1; frame <= 10; frame++) {
      score += rollNumber(((frame - 1) * 2)) + rollNumber(((frame - 1) * 2 + 1));
    }
    return score;
  };

  return { roll: roll, score: score };
};

module.exports = BowlingGame;
