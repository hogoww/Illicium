Class {
	#name : #ASTCBoolean,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCBoolean class >> asCType [
	^#bool
]

{ #category : #controlling }
ASTCBoolean >> and: aBoolean [
	| firstPart secondPart |
	firstPart := value isBlock
		ifTrue: [ value statements size = 1
				ifTrue: [ value statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ value acceptVisitor: methodTranslator ].
	secondPart := aBoolean isBlock
		ifTrue: [ aBoolean statements size = 1
				ifTrue: [ aBoolean statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ aBoolean acceptVisitor: methodTranslator ].
	
	^ ASTCOperator new
		symbol: '&&';
		addOperand: firstPart;
		addOperand: secondPart;
		yourself
]

{ #category : #controlling }
ASTCBoolean >> ifFalse: falseBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: ASTCBlock new;
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifFalse: falseBlock ifTrue: trueBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: ASTCBlock new;
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
 	^ASTCIf new
		condition: (self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> not [
	^ ASTCOperator new
		symbol: '!';
		addOperand: (value acceptVisitor: methodTranslator) ;
		yourself
]

{ #category : #controlling }
ASTCBoolean >> or: aBoolean [
	| firstPart secondPart |
	firstPart := value isBlock
		ifTrue: [ value statements size = 1
				ifTrue: [ value statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #or.' ] ]
		ifFalse: [ value acceptVisitor: methodTranslator ].
	secondPart := aBoolean isBlock
		ifTrue: [ aBoolean statements size = 1
				ifTrue: [ aBoolean statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #or.' ] ]
		ifFalse: [ aBoolean acceptVisitor: methodTranslator ].
	^ ASTCOperator new
		symbol: '||';
		addOperand: firstPart;
		addOperand: secondPart;
		yourself
]
