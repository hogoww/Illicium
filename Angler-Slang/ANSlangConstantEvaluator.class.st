Class {
	#name : #ANSlangConstantEvaluator,
	#superclass : #Object,
	#instVars : [
		'errorBlock',
		'program'
	],
	#category : #'Angler-Slang-analysis'
}

{ #category : #evaluating }
ANSlangConstantEvaluator >> evaluate: aRBLiteralValueNode ifNonValueDo: aBlockClosure [ 
	
	errorBlock := [ ^ aBlockClosure value ].
	^ aRBLiteralValueNode acceptVisitor: self
]

{ #category : #accessing }
ANSlangConstantEvaluator >> program: anANProgram [

	program := anANProgram 
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitArgumentNode: aRBArgumentNode [ 

	^ nil
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitGlobalNode: aRBGlobalNode [ 
	
	^ nil
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitLiteralValueNode: aRBLiteralValueNode [ 
	
	^ aRBLiteralValueNode value
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitMessageNode: aRBMessageNode [ 

	(VMBasicConstants valueOfBasicSelector: aRBMessageNode selector)
		ifNotNil: [ :value | ^ value ].
	
	(program hasMethodNamed: aRBMessageNode selector)
		ifTrue: [ ^ (program methodNamed: aRBMessageNode selector) body acceptVisitor: self ].
	
	(#( + - * // ) includes: aRBMessageNode selector)
		ifFalse: [ errorBlock value ].
	
	^ (aRBMessageNode receiver acceptVisitor: self)
		perform: aRBMessageNode selector
		withArguments: { (aRBMessageNode arguments first acceptVisitor: self) }
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitReturnNode: aRBReturnNode [ 
	
	^ aRBReturnNode value acceptVisitor: self
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitSequenceNode: aRBSequenceNode [ 
	
	aRBSequenceNode statements size > 1 ifTrue: [ errorBlock value ].
	^ aRBSequenceNode statements first acceptVisitor: self
]

{ #category : #visiting }
ANSlangConstantEvaluator >> visitTemporaryNode: aRBTemporaryNode [ 

	^ nil
]
