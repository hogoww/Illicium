Class {
	#name : #ASTCBoolean,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCBoolean class >> asCType [
	^#bool
]

{ #category : #controlling }
ASTCBoolean >> and: aBoolean [
	| args |
	args := self binarySelectorArgs: aBoolean.
	^ (args at:1) and: (args at:2)
]

{ #category : #controlling }
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

{ #category : #controlling }
ASTCBoolean >> ifFalse: falseBlock [
	self ifTrueifFalseChecker: { falseBlock }.
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: ASTCBlock new;
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifFalse: falseBlock ifTrue: trueBlock [
	self ifTrueifFalseChecker: { falseBlock.trueBlock. }.
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock [
	self ifTrueifFalseChecker: { trueBlock }.
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: ASTCBlock new;
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
	self ifTrueifFalseChecker: { trueBlock.falseBlock }.
 	^ASTCIf new
		condition: (self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifTrueifFalseChecker: anArrayOfArg [
	value parent parent isAssignment ifTrue:[ self error: 'Cannot translate assignement from ifTrues messages.' ].
	anArrayOfArg do: [ : anArg | 
			anArg isBlock ifFalse:[ self error: 'currently only translate blocks as argument of ifTrues messages.']. 
		]
]

{ #category : #controlling }
ASTCBoolean >> not [
	^ (value acceptVisitor: methodTranslator) not
]

{ #category : #controlling }
ASTCBoolean >> or: aBoolean [
	| args |
	args := self binarySelectorArgs: aBoolean.
	^ (args at:1) or: (args at:2)
]
