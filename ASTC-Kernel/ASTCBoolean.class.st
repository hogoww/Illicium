Class {
	#name : #ASTCBoolean,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCBoolean class >> asCType [
	^#bool
]

{ #category : #'translation-controlling' }
ASTCBoolean >> and: aBoolean [
	| args |
	args := self binarySelectorArgs: aBoolean.
	^ args first && args second
]

{ #category : #checker }
ASTCBoolean >> binarySelectorArgs: aBoolean [
	| firstOperand secondOperand |
	firstOperand := value isBlock
		ifTrue: [ value statements size = 1
				ifTrue: [ value statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ value acceptVisitor: methodTranslator ].
	secondOperand := aBoolean isBlock
		ifTrue: [ aBoolean statements size = 1
				ifTrue: [ aBoolean statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ aBoolean acceptVisitor: methodTranslator ].
	^ { firstOperand. secondOperand }
]

{ #category : #'translation-controlling' }
ASTCBoolean >> ifFalse: falseBlock [
	self ifTrueifFalseChecker: { falseBlock }.
 	^ ASTCIf new
		condition: (self value acceptVisitor: self visitor);
		then: ASTCBlock new;
		else: (falseBlock acceptVisitor: self visitor);
		yourself
]

{ #category : #'translation-controlling' }
ASTCBoolean >> ifFalse: falseBlock ifTrue: trueBlock [
	self ifTrueifFalseChecker: { falseBlock.trueBlock. }.
 	^ ASTCIf new
		condition: (self value acceptVisitor: self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself
]

{ #category : #'translation-controlling' }
ASTCBoolean >> ifTrue: trueBlock [
	self ifTrueifFalseChecker: { trueBlock }.
 	^ ASTCIf new
		condition: (self value acceptVisitor: self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: ASTCBlock new;
		yourself
]

{ #category : #'translation-controlling' }
ASTCBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
	self ifTrueifFalseChecker: { trueBlock.falseBlock }.
 	^ ASTCIf new
		condition: (self value acceptVisitor: self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself
]

{ #category : #checker }
ASTCBoolean >> ifTrueifFalseChecker: anArrayOfArg [
	value parent parent isAssignment ifTrue:[ self error: 'Cannot translate assignement from ifTrues messages.' ].
	anArrayOfArg do: [ : anArg | 
			anArg isBlock ifFalse:[ self error: 'currently only translate blocks as argument of ifTrues messages.']. 
		]
]

{ #category : #'translation-logical operations' }
ASTCBoolean >> not [
	^ (value acceptVisitor: methodTranslator) not
]

{ #category : #'translation-controlling' }
ASTCBoolean >> or: aBoolean [
	| args |
	args := self binarySelectorArgs: aBoolean.
	^ args first || args second
]
