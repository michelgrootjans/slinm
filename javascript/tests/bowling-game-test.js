import chai from 'chai';
const expect = chai.expect;
import {score, roll} from './..src/bowling-game';

describe('Bowling Game', () => {
  it('a new game scores 0', () => {
    expect(score()).to.equal(0);
  });
});
