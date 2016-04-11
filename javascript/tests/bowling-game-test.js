var chai = require('chai');
var expect = chai.expect; // we are using the "expect" style of Chai
var BowlingGame = require('./../src/bowling-game');

describe('Bowling Game', function() {
  it('a new game scores 0', function() {
    expect(new BowlingGame().score()).to.equal(0);
  });
});
