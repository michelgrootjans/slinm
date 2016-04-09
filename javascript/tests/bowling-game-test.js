// tests/part1/cart-summary-test.js
var chai = require('chai');
var expect = chai.expect; // we are using the "expect" style of Chai
var BowlingGame = require('./../src/bowling-game');

describe('Bowling Game', function() {
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

  it('rolling spare-2 scores 14', function() {
    game.roll(4);
    game.roll(6);
    game.roll(2);
    expect(game.score()).to.equal((4+6+2) + (2));
  });

  it('rolling all 5-es scores 150', function(){
    for (var i = 0; i < 21; i++) {
      game.roll(5);
    }
    expect(game.score()).to.equal(150);
  });

  it('rolling strike-2-3 scores 20', function(){
    game.roll(10);
    game.roll(2);
    game.roll(3);
    expect(game.score()).to.equal((10+2+3) + (2+3));
  });

  it('rolling strike-strike-2-3 scores 42', function(){
    game.roll(10);
    game.roll(10);
    game.roll(2);
    game.roll(3);
    expect(game.score()).to.equal((10+10+2) + (10+2+3) + (2+3));
  });

});
