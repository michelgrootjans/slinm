TestCase subclass: #BowlingGameTest
	instanceVariableNames: 'game'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BowlingGame'


BowlingGameTest>>setUp
	game := BowlingGame new


BowlingGameTest>>testANewGame
	self assert: game score equals: 0

BowlingGameTest>>testRollingAOne
	game roll: 1.
	self assert: game score equals: 1

BowlingGameTest>>testRollingAOneTwice
	game roll: 1.
	game roll: 1.
	self assert: game score equals: 2

BowlingGameTest>>testRollingAOneTwiceUsingArray
	game rolls: { 1 . 1 }.
	self assert: game score equals: 2

BowlingGameTest>>testRollingAOneTwiceUsingCascade
	game
		roll: 1;
		roll: 1.
	self assert: game score equals: 2

BowlingGameTest>>testRollingAOneTwiceUsingKeywordSyntax
	game roll: 1 and: 1.
	self assert: game score equals: 2

BowlingGameTest>>testRollingAPerfectGame
	12 timesRepeat: [ game roll: 10 ].
	self assert: game score equals: 300

BowlingGameTest>>testRollingASpareAndATwo
	game rolls: { 6 . 4 . 2 }.
	self assert: game score equals: (6+4+2 + 2)

BowlingGameTest>>testRollingAStrikeAStrikeA2AndAThree
	game rolls: { 10 . 10 . 2 . 3 }.
	self assert: game score equals: (10+10+2 + 10+2+3 + 2+3)

BowlingGameTest>>testRollingAStrikeATwoAndAThree
	game rolls: { 10 . 2 . 3 }.
	self assert: game score equals: (10+2+3 + 2+3)

BowlingGameTest>>testRollingAZero
	game roll: 0.
	self assert: game score equals: 0

