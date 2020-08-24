Class {
	#name : #FAAbstractPrettyPrinter,
	#superclass : #ASTCSuperclassVisitor,
	#instVars : [
		'stream',
		'indentation',
		'indentationString'
	],
	#category : #'FAngler-ASTC-Visitors-Prettyprint'
}

{ #category : #configuration }
FAAbstractPrettyPrinter class >> defaultIndentation [
	^ ' '
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> << chars [
	stream << chars
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> cr [
	stream cr
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> enterBlock [
	self indent
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> indent [
	indentation:=indentation , (String streamContents:[:s|
		self printSingleIndentationOn: s.
	]).
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> indentationString [

	^ indentationString
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> indentationString: aString [

	indentationString := aString
]

{ #category : #initialization }
FAAbstractPrettyPrinter >> initialize [
	stream := String new writeStream.
	indentation := ''.
	indentationString := self class defaultIndentation
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> leaveBlock [
	self unindent
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> parenthesisFor: aNode print: aBlock [

	self parenthesisIf: (self doesThisNeedParenthesis: aNode) 
		print: aBlock.

]

{ #category : #indentation }
FAAbstractPrettyPrinter >> parenthesisIf: aBool print: aBlock [
	aBool ifTrue: [ self << '(' ].
	aBlock value.
	aBool ifTrue: [ self << ')' ].
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> print: anObject [
	anObject acceptVisitor: self
]

{ #category : #printing }
FAAbstractPrettyPrinter >> printOn: aStream [
	super printOn: aStream.
	aStream << Character cr.
	aStream << self.
	^aStream.
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> printSingleIndentationOn: aStream [

	aStream << indentationString
]

{ #category : #printing }
FAAbstractPrettyPrinter >> printString [
	^self stream contents
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> space [
	stream space
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> spaces [
	stream << indentation
]

{ #category : #accessing }
FAAbstractPrettyPrinter >> stream [
	^ stream
]

{ #category : #accessing }
FAAbstractPrettyPrinter >> stream: aStream [
	stream := aStream
]

{ #category : #printing }
FAAbstractPrettyPrinter >> toTranscript [
	Transcript show:self ; cr.
]

{ #category : #indentation }
FAAbstractPrettyPrinter >> unindent [
	indentation := indentation allButLast: (indentationString size).
]
