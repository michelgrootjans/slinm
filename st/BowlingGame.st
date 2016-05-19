Object subclass: #BowlingGame
	instanceVariableNames: 'pins'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BowlingGame'


"protocol: initialize"
BowlingGame>>initialize
	pins := OrderedCollection new


"protocol: api"
BowlingGame>>roll: somePins 
	pins add: somePins.
	(somePins = 10) ifTrue: [ pins add: 0 ]

"protocol: api"
BowlingGame>>rolls: someArrayOfPins
 	someArrayOfPins do: [ :somePins | self roll: somePins ] 

"protocol: api"
BowlingGame>>roll: somePins and: somePins2
	self roll: somePins.
	self roll: somePins2

"protocol: api"
BowlingGame>>roll: somePins and: somePins2 and: somePins3
	self roll: somePins.
	self roll: somePins2.
	self roll: somePins3

"protocol: api"
BowlingGame>>score
	^ (1 to: 10) inject: 0 into: [ :score :frame | score + (self scoreForFrame: frame) ]


"protocol: private"
BowlingGame>>scoreForFrame: aFrame
	(self isStrike: aFrame) ifTrue: [ ^ 10 + (self strikeBonus: aFrame) ].
	(self isSpare: aFrame) ifTrue: [ ^ 10 + (self spareBonus: aFrame) ].
	^ (self firstRollOfFrame: aFrame) + (self secondRollOfFrame: aFrame)
	
"protocol: private"
BowlingGame>>firstRollOfFrame: aFrame 
	^ pins at: (aFrame * 2 - 1) ifAbsent: 0

"protocol: private"
BowlingGame>>secondRollOfFrame: aFrame 
	^ pins at: (aFrame * 2) ifAbsent: 0

"protocol: private"
BowlingGame>>isSpare: aFrame
	^ (self firstRollOfFrame: aFrame) + (self secondRollOfFrame: aFrame) = 10

"protocol: private"
BowlingGame>>isStrike: aFrame
	^ (self firstRollOfFrame: aFrame) = 10

"protocol: private"
BowlingGame>>spareBonus: aFrame
	^ self firstRollOfFrame: aFrame + 1

"protocol: private"
BowlingGame>>strikeBonus: aFrame
	(self isStrike: (aFrame + 1)) ifTrue: [ ^ (self firstRollOfFrame: aFrame + 1) + (self firstRollOfFrame: aFrame + 2) ].
	^ (self firstRollOfFrame: aFrame + 1) + (self secondRollOfFrame: aFrame + 1)
