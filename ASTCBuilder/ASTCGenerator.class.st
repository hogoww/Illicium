Class {
	#name : #ASTCGenerator,
	#superclass : #FmxMBWalkerVisitor,
	#category : #ASTCBuilder
}

{ #category : #visiting }
ASTCGenerator >> visitBuilder: aBuilder [
	aBuilder crLog.
	super visitBuilder:aBuilder.
]

{ #category : #visiting }
ASTCGenerator >> visitClass: aClass [
	| superClass className |
	superClass := aClass 
	"Children are visited after the class is created, to be able to add them."
	super visitClass: aClass

]

{ #category : #visiting }
ASTCGenerator >> visitRelationSide: aRelationSide [

	aRelationSide crLog
]

{ #category : #visiting }
ASTCGenerator >> visitTrait: aTrait [

	aTrait crLog.
	super visitTrait:aTrait.
]

{ #category : #visiting }
ASTCGenerator >> visitTypedProperty: aTypedProperty [
	aTypedProperty crLog
]
