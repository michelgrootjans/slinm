var BowlingGame = function () {
  var total = 0;
  this.roll  = function (pins) { total = pins; };
  this.score = function () { return total; };
};
module.exports = BowlingGame;
