Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Gen-visitors'
}

{ #category : #initialization }
ASTCPrinterVisitor >> initialize [
	stream := String new writeStream.
	currentDepth := 0
]

{ #category : #printing }
ASTCPrinterVisitor >> printOn: aStream [
	aStream << stream contents
]

{ #category : #printing }
ASTCPrinterVisitor >> printTabCount: aNumber [
	aNumber timesRepeat: [ :i | stream tab ]
]

{ #category : #accessing }
ASTCPrinterVisitor >> stream [
	^ stream
]

{ #category : #printing }
ASTCPrinterVisitor >> toTranscript [
	Transcript
		show: self;
		cr
]
