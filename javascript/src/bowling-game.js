var BowlingGame = function() {
  var score = 0;
    return {
      roll: function(pins){
        score += pins;
      },
      score: function() {
          return score;
      }
    };
};

module.exports = BowlingGame;
