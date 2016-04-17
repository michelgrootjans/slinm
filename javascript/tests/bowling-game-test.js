var chai = require('chai');
var expect = chai.expect; // we are using the "expect" style of Chai
var BowlingGame = require('./../src/bowling-game');

describe('Bowling Game', function () {
  beforeEach(function () { game = new BowlingGame(); });

  context('a new game', function () {
    it('scores 0', function () { expect(game.score()).to.equal(0); });
  });

  context('rolling 0', function () {
    beforeEach(function () { game.roll(0); });
    it('scores 0', function () { expect(game.score()).to.equal(0); });
  });

  context('rolling 1', function () {
    beforeEach(function () { game.roll(1); });
    it('scores 1', function () { expect(game.score()).to.equal(1); });
  });
});
