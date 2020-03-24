Class {
	#name : #FASlangMoveReturnInSwitch,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#instVars : [
		'shouldMoveInReturn',
		'shouldMoveInAssignement',
		'addedReturn',
		'addedAssignement'
	],
	#category : #'FAngler-ASTC-Visitors-Modification'
}

{ #category : #initialization }
FASlangMoveReturnInSwitch >> initialize [
	shouldMoveInReturn := 0.
	shouldMoveInAssignement := nil.
	addedReturn := false.
	addedAssignement := false.
]

{ #category : #accessing }
FASlangMoveReturnInSwitch >> visitAssignmentOperator: anAssignmentOperator [ 
	
	anAssignmentOperator rightOperand isSwitch ifTrue: [ shouldMoveInAssignement := anAssignmentOperator leftOperand  ].
	super visitAssignmentOperator: anAssignmentOperator.
	anAssignmentOperator rightOperand isSwitch ifTrue: [ shouldMoveInAssignement := nil ].
	
	addedAssignement ifTrue:[
		anAssignmentOperator parent parent statements: 
			(anAssignmentOperator parent parent statements 
				collect: [:each | each == anAssignmentOperator 
					ifTrue: [ anAssignmentOperator expression ] 
					ifFalse: [ each ]]).
		addedAssignement := false
		]
]

{ #category : #accessing }
FASlangMoveReturnInSwitch >> visitReturn: aReturnNode [
	
	aReturnNode expression isSwitch ifTrue: [ shouldMoveInReturn := shouldMoveInReturn + 1 ].
	super visitReturn: aReturnNode.
	aReturnNode expression isSwitch ifTrue: [ shouldMoveInReturn := shouldMoveInReturn - 1 ].
	
	addedReturn ifTrue:[
		aReturnNode parent statements: 
			(aReturnNode parent statements collect: [:each | each == aReturnNode ifTrue: [ aReturnNode expression ] ifFalse: [each]]).
		addedReturn := false
		]
]

{ #category : #accessing }
FASlangMoveReturnInSwitch >> visitSwitchCase: aSwithCase [
	| lastNode newNode |
	super visitSwitchCase: aSwithCase.
	
	lastNode := aSwithCase body statements removeLast.
	lastNode isBreak ifTrue: [ lastNode := aSwithCase body statements removeLast ].
	newNode := lastNode.
	
	shouldMoveInAssignement isNotNil ifTrue: [
		newNode := aSwithCase body addStatement: 
			(ASTCAssignmentOperator new
				leftOperand: shouldMoveInAssignement;
				rightOperand: lastNode; yourself) asStatement.
		addedAssignement := true
		].
	
	shouldMoveInReturn > 0 ifTrue: [	
		newNode := (ASTCReturn new expression: newNode ; yourself).
		addedReturn := true
		].

	aSwithCase body addStatement: newNode
]
