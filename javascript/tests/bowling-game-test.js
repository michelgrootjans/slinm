// tests/part1/cart-summary-test.js
var chai = require('chai');
var expect = chai.expect; // we are using the "expect" style of Chai
var BowlingGame = require('./../src/bowling-game');

describe('CartSummary', function() {
  beforeEach(function(){
    game = new BowlingGame();
  });

  it('a new game scores 0', function() {
    expect(game.score()).to.equal(0);
  });

  it('rolling 0 scores 0', function() {
    game.roll(0);
    expect(game.score()).to.equal(0);
  });

  it('rolling a gutter game scores 0', function() {
    for (var i = 0; i < 20; i++) {
      game.roll(0);
    }
    expect(game.score()).to.equal(0);
  });

  it('rolling 1 scores 1', function() {
    game.roll(1);
    expect(game.score()).to.equal(1);
  });

  it('rolling 2 scores 2', function() {
    game.roll(2);
    expect(game.score()).to.equal(2);
  });

  it('rolling 1 twice scores 2', function() {
    game.roll(1);
    game.roll(1);
    expect(game.score()).to.equal(2);
  });
});
