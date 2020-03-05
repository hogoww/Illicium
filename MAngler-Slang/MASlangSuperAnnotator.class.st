Class {
	#name : #MASlangSuperAnnotator,
	#superclass : #FAAbstractCheckVisitor,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MASlangSuperAnnotator class >> propertyName [
	"should return a symbol with the name of the property"
	^ #superMethod
]

{ #category : #visiting }
MASlangSuperAnnotator >> visitMessageNode: aMessageNode [
	aMessageNode receiver isSuper ifTrue:[
		| superMethod |
		superMethod := (aMessageNode methodNode methodClass superclass lookupSelector: aMessageNode selector) ast.
		self atNewPropertyPut: superMethod for: aMessageNode.
		superMethod acceptVisitor: self "we do this recursively"
		].
	super visitMessageNode: aMessageNode.
]
