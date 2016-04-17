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

  context('rolling 1 twice', function () {
    beforeEach(function () {
      game.roll(1);
      game.roll(1);
    });
    it('scores 2', function () { expect(game.score()).to.equal(2); });
  });

  context('rolling spare-2', function () {
    beforeEach(function () {
      game.roll(4);
      game.roll(6);
      game.roll(2);
    });
    it('scores 14', function () { expect(game.score()).to.equal(4+6+2 + 2); });
  });

  context('rolling strike-2-3', function () {
    beforeEach(function () {
      game.roll(10);
      game.roll(2);
      game.roll(3);
    });
    it('scores 20', function () { expect(game.score()).to.equal(10+2+3 + 2+3); });
  });
});
