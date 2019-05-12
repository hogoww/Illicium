Extension { #name : #RBProgramNode }

{ #category : #'*ASTC-VisitorsRB' }
RBProgramNode >> acceptMultipleVisitors: aCollectionOfProgramNodeVisitors [ 
	aCollectionOfProgramNodeVisitors do:[:aProgramNodeVisitor| self acceptVisitor: aProgramNodeVisitor  ].
	^aCollectionOfProgramNodeVisitors.
]

{ #category : #'*ASTC-VisitorsRB' }
RBProgramNode >> propertyAt: aKey ifAbsent: aBlock [
	"Answer the property value associated with aKey or, if aKey isn't found, answer the result of evaluating aBlock."
	"PR done in pharo 8 to correct this. Extension in the meantime"
	^ properties 
		ifNil: aBlock
		ifNotNil: [ properties at: aKey ifAbsent: aBlock ]
]

{ #category : #'*ASTC-VisitorsRB' }
RBProgramNode >> propertyAt: aKey ifPresent: aPresentBlock ifAbsent: anAbsentBlock [
	"Answer the property value associated with aKey or, if aKey is found, answer the result of evaluating aPresentBlock, else evaluates anAbsentBlock."
	"PR done in pharo 8 to correct this. Extension in the meantime"
	^ properties ifNil: anAbsentBlock ifNotNil: [ properties at: aKey ifPresent: aPresentBlock ifAbsent: anAbsentBlock ]
]
