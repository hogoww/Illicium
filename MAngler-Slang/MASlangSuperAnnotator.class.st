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
MASlangSuperAnnotator >> annotateMethodAST: aMethodNode [
	self flag: #hack."we annotate the method with the TMethod equivalent."
	self flag: #implicit."i don't like it"
	aMethodNode asTranslationMethodOfClass: TMethod.
	classTranslator annotateMethodAST: aMethodNode.
]

{ #category : #visiting }
MASlangSuperAnnotator >> classTranslator [
	^ classTranslator
]

{ #category : #visiting }
MASlangSuperAnnotator >> classTranslator: aClassTranslator [
	classTranslator := aClassTranslator
]

{ #category : #visiting }
MASlangSuperAnnotator >> visitMessageNode: aMessageNode [
	aMessageNode receiver isSuper ifTrue: [
		| superMethod |
		superMethod := (aMessageNode methodNode methodClass superclass lookupSelector: aMessageNode selector) ast copy.
		self atNewPropertyPut: superMethod for: aMessageNode.
		self annotateMethodAST: superMethod
		].
	super visitMessageNode: aMessageNode.
]
