Prepare project:
> npm install

Run tests:
> mocha tests --watch
>

Alternative 1:
**************
function BowlingGame() {
  this.score = function(){
    return 0;
  }
}
module.exports = BowlingGame;

Alternative 2:
**************
function BowlingGame() {}
BowlingGame.prototype.score = function(){
  return 0;
}
module.exports = BowlingGame;

Alternative 3:
**************
var BowlingGame = function() {
    return {
      score: function() {
          return 0;
      }
    };
};
