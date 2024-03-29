Class {
	#name : #IlliciumBoolean,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #type }
IlliciumBoolean class >> asCType [
	^ #bool
]

{ #category : #'translation-controlling' }
IlliciumBoolean >> and: aBoolean [
	| args |
	args := self binarySelectorArgs: aBoolean.
	^ args first && args second
]

{ #category : #checker }
IlliciumBoolean >> binarySelectorArgs: aBoolean [
	| firstOperand secondOperand |
	firstOperand := receiverNode isBlock
		ifTrue: [ receiverNode statements size = 1
				ifTrue: [ receiverNode statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ self translatedReceiver ].
	secondOperand := aBoolean isBlock
		ifTrue: [ aBoolean statements size = 1
				ifTrue: [ aBoolean statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ aBoolean acceptVisitor: methodTranslator ].
	^ { firstOperand. secondOperand }
]

{ #category : #'translation-controlling' }
IlliciumBoolean >> ifFalse: falseBlock [
	self ifTrueifFalseChecker: { falseBlock }.
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: ASTCBlock new;
		else: (falseBlock acceptVisitor: self visitor);
		yourself
]

{ #category : #'translation-controlling' }
IlliciumBoolean >> ifFalse: falseBlock ifTrue: trueBlock [
	self ifTrueifFalseChecker: { falseBlock.trueBlock. }.
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself
]

{ #category : #'translation-controlling' }
IlliciumBoolean >> ifTrue: trueBlock [
	self ifTrueifFalseChecker: { trueBlock }.
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: methodTranslator);
		else: ASTCBlock new;
		yourself
]

{ #category : #'translation-controlling' }
IlliciumBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
	self ifTrueifFalseChecker: { trueBlock.falseBlock }.
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: methodTranslator);
		else: (falseBlock acceptVisitor: methodTranslator);
		yourself
]

{ #category : #checker }
IlliciumBoolean >> ifTrueifFalseChecker: anArrayOfArg [
	receiverNode parent parent isAssignment ifTrue:[ self error: 'Cannot translate assignement from ifTrues messages.' ].
	anArrayOfArg do: [ : anArg | 
			anArg isBlock ifFalse:[ self error: 'currently only translate blocks as argument of ifTrues messages.']. 
		]
]

{ #category : #'translation-logical operations' }
IlliciumBoolean >> not [
	^ self translatedReceiver not
]

{ #category : #'translation-controlling' }
IlliciumBoolean >> or: aBoolean [
	| args |
	args := self binarySelectorArgs: aBoolean.
	^ args first || args second
]
