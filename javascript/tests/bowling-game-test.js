var chai = require('chai');
var expect = chai.expect; // we are using the "expect" style of Chai
var BowlingGame = require('./../src/bowling-game');

describe('Bowling Game', function () {
    var game;
    beforeEach(function () { game = new BowlingGame(); });

    it('a new game scores 0', function () {
        expect(game.score()).to.equal(0);
    });
    it('rolling 0 scores 0', function () {
        game.roll(0);
        expect(game.score()).to.equal(0);
    });
});
