Class {
	#name : #MASlangConstantEvaluator,
	#superclass : #Object,
	#instVars : [
		'errorBlock',
		'program'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #evaluating }
MASlangConstantEvaluator >> evaluate: aRBLiteralValueNode ifNonValueDo: aBlockClosure [ 
	
	errorBlock := [ ^ aBlockClosure value ].
	^ aRBLiteralValueNode acceptVisitor: self
]

{ #category : #accessing }
MASlangConstantEvaluator >> program: anANProgram [

	program := anANProgram 
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitArgumentNode: aRBArgumentNode [ 

	^ nil
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitArgumentVariableNode: anArgument [
	^ self visitArgumentNode: anArgument

]

{ #category : #visiting }
MASlangConstantEvaluator >> visitGlobalNode: aRBGlobalNode [ 
	
	^ nil
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitInstanceVariableNode: aRBInstanceVariableNode [ 
	^ nil
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitLiteralValueNode: aRBLiteralValueNode [ 
	
	^ aRBLiteralValueNode value
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitMessageNode: aRBMessageNode [ 

	| receiver argument |
	(VMBasicConstants valueOfBasicSelector: aRBMessageNode selector)
		ifNotNil: [ :value | ^ value ].
	
	(program hasMethodNamed: aRBMessageNode selector)
		ifTrue: [ ^ (program methodNamed: aRBMessageNode selector) body acceptVisitor: self ].
	
	(#( + - * // ) includes: aRBMessageNode selector)
		ifFalse: [ errorBlock value ].
	
	receiver := (aRBMessageNode receiver acceptVisitor: self).
	argument := (aRBMessageNode arguments first acceptVisitor: self).
	
	(receiver isNil or: [ argument isNil ]) ifTrue: [ errorBlock value ].
	
	^ receiver perform: aRBMessageNode selector withArguments: { argument }
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitReturnNode: aRBReturnNode [ 
	
	^ aRBReturnNode value acceptVisitor: self
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitSequenceNode: aRBSequenceNode [ 
	
	aRBSequenceNode statements size > 1 ifTrue: [ errorBlock value ].
	^ aRBSequenceNode statements first acceptVisitor: self
]

{ #category : #visiting }
MASlangConstantEvaluator >> visitTemporaryNode: aRBTemporaryNode [ 

	^ nil
]
