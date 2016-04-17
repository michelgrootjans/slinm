var BowlingGame = function () {
  var total = 0;
  var roll  = function (pins) { total += pins; };
  var score = function () { return total; };

  return { roll: roll, score: score };
};
module.exports = BowlingGame;
