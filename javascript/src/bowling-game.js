const rolls = [];

const scoreFor = (frame) => {
  if(isStrike(frame)) return 10 + strikeBonusFor(frame);
  if( isSpare(frame)) return 10 +  spareBonusFor(frame);
  return firstRollOf(frame) + secondRollOf(frame);
};

const isStrike = (frame) => firstRollOf(frame) == 10;

const strikeBonusFor = (frame) => {
  if(isStrike(frame+1))
    return firstRollOf(frame + 1) +  firstRollOf(frame + 2)
  return   firstRollOf(frame + 1) + secondRollOf(frame + 1);
};

const isSpare = (frame) => firstRollOf(frame) + secondRollOf(frame) == 10;

const spareBonusFor = frame) => firstRollOf(frame + 1);

const rollNumber = (index) => {
  if (index > (rolls.length - 1)) return 0;
  return rolls[index];
};

const firstRollOf = (frame) => rollNumber((frame-1) * 2);

const secondRollOf = (frame) => rollNumber((frame-1) * 2 + 1);

export const roll = (pins) => {
  rolls.push(pins);
  if (pins === 10) rolls.push(0);
};

export const score = () => {
  let score = 0;
  for (let frame = 1; frame <= 10; frame++){
    score += scoreFor(frame);
  }
  return score;
};
