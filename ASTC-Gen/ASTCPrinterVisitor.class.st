Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Gen-visitor'
}

{ #category : #initialization }
ASTCPrinterVisitor >> initialize [
	stream := String new writeStream.
	currentDepth:=0.
]

{ #category : #printing }
ASTCPrinterVisitor >> printOn:aStream [
	^aStream nextPutAll: self stream contents.
]

{ #category : #printing }
ASTCPrinterVisitor >> printTabCount: aNumber [
		1 to: aNumber do:[:i| stream tab.]
]

{ #category : #accessing }
ASTCPrinterVisitor >> stream [
	^stream
]

{ #category : #printing }
ASTCPrinterVisitor >> toTranscript [
	Transcript show:self ;cr.
]
