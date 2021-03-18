Class {
	#name : #MASlangSuperAnnotator,
	#superclass : #FAAbstractCheckVisitor,
	#instVars : [
		'classTranslator'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MASlangSuperAnnotator class >> propertyName [
	"should return a symbol with the name of the property"
	^ #superMethod
]

{ #category : #visiting }
MASlangSuperAnnotator >> classTranslator [
	^ classTranslator
]

{ #category : #visiting }
MASlangSuperAnnotator >> classTranslator: aClassTranslator [
	classTranslator := aClassTranslator
]

{ #category : #applying }
MASlangSuperAnnotator >> getAnnotatedSuperMethodOf: aMessageNode [

	"requires to get the method, COPY it, then annotate it."

	| superMethod |
	superMethod := (aMessageNode methodNode methodClass superclass 
		                lookupSelector: aMessageNode selector) ast copy.
	superMethod asTranslationMethodOfClass: TMethod. "annotate with TNodeEquivalent..."
	classTranslator annotateMethodAST: superMethod.
	self flag: #hackish. "Slang sometimes add a return self. so we remove it."
	(superMethod statements last isReturn and: [ 
		 superMethod statements last value isSelfVariable ]) ifTrue: [ 
		superMethod statements removeLast ].
	^ superMethod
]

{ #category : #visiting }
MASlangSuperAnnotator >> visitMessageNode: aMessageNode [

	aMessageNode receiver isSuperVariable ifTrue: [ 
		| superMethod |
		superMethod := self getAnnotatedSuperMethodOf: aMessageNode.
		self atNewPropertyPut: superMethod for: aMessageNode ].
	super visitMessageNode: aMessageNode
]
