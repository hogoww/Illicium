Class {
	#name : #ASTCSmallInteger,
	#superclass : #Object,
	#instVars : [
		'myself',
		'visitor'
	],
	#category : #ASTCKernel
}

{ #category : #accessing }
ASTCSmallInteger >> * anotherSmallInteger [
	|res|
	res:=ASTCOperator new 
		symbol:'-';
		yourself.
	res operands add:(self myself acceptVisitor: self visitor).
	res operands add:(anotherSmallInteger acceptVisitor: self visitor).
	^res.
		
]

{ #category : #accessing }
ASTCSmallInteger >> - anotherSmallInteger [
	|res|
	res:=ASTCOperator new 
		symbol:'-';
		yourself.
	res operands add:(self myself acceptVisitor: self visitor).
	res operands add:(anotherSmallInteger acceptVisitor: self visitor).
	^res.
		
]

{ #category : #accessing }
ASTCSmallInteger >> = anotherSmallInteger [
	|res|
	res:=ASTCOperator new 
		symbol:'=';
		yourself.
	res operands add:(self myself acceptVisitor: self visitor).
	res operands add:(anotherSmallInteger acceptVisitor: self visitor).
	^res.
		
]

{ #category : #accessing }
ASTCSmallInteger >> asString [
	^self myself value.
]

{ #category : #accessing }
ASTCSmallInteger >> doesNotUnderstand: aMessage [
	self flag:#missingArguments.
	^ASTCFunctionCall new
		id: (ASTCIdentifier new id: aMessage selector; yourself) ;
		arguments: (ASTCContainer new);
		yourself.

	
	"Transcript show: self; show: ' didn''t understand : ' ; show: aMessage selector; cr."
]

{ #category : #accessing }
ASTCSmallInteger >> ifTrue: trueBlock ifFalse: falseBlock [
	^ASTCIf new
		predicate:(self myself acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor)
		yourself.
]

{ #category : #accessing }
ASTCSmallInteger >> myself [
	^ myself
]

{ #category : #accessing }
ASTCSmallInteger >> myself: anObject [
	myself := anObject
]

{ #category : #accessing }
ASTCSmallInteger >> printOn: aStream [
	aStream 	<< self class asString; 
				<<'(';
				<< self asString;
				<<')'.
]

{ #category : #accessing }
ASTCSmallInteger >> visitor [
	^ visitor
]

{ #category : #accessing }
ASTCSmallInteger >> visitor: anObject [
	visitor := anObject
]
