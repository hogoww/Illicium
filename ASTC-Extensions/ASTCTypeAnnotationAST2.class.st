Class {
	#name : #ASTCTypeAnnotationAST2,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer',
		'methodType'
	],
	#category : #'ASTC-Extensions-RBAnnotations'
}

{ #category : #accessing }
ASTCTypeAnnotationAST2 class >> property [
	"should return a symbol with the name of the property"
	^#type
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getMethodTypeType [
	^methodType receiver
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForAGlobalNode: aGlobalNode [
	| type |
	"Works only for classes so far."
	"Globals variables such as Smalltalk / Transcript can't be supported so far."
	type := inferer inferGlobalNode: aGlobalNode.
	^type concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForAMethodNode: aMethodNode [ 
	methodType:= inferer types 
		methodTypes 
			detect:[:aMethodType|
					aMethodType node isMethod and:[aMethodType selector = aMethodNode selector]].
	^methodType returnType concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForASelfNode: aRBSelfNode [ 
	^self getMethodTypeType concreteClasses.
]

{ #category : #actions }
ASTCTypeAnnotationAST2 >> getTypeForATemporaryNode: aRBTemporaryNode [ 
	| selector method |
	selector:=aRBTemporaryNode methodNode selector.
	method:=inferer types methodTypes detect:[:aMethod| aMethod node selector = selector].
	^(method variableAt: aRBTemporaryNode name asSymbol 
		ifAbsent:[self error: 'Phineas couldn''t type the temporary variable : ', aRBTemporaryNode name asSymbol ]) 
			ifNotNil:[:aVariable| aVariable concreteClasses].
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForArgumentNode: anArgumentNode [
	^self getTypeForATemporaryNode: anArgumentNode.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForInstanceVariableNode: aInstanceVariableNode [ 
	^(methodType receiver instanceVariable: aInstanceVariableNode name) concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForMessageNode: aRBMessageNode [ 	
	| aNode |
	aNode:=inferer types messageTypes detect:[:each| each message = aRBMessageNode ].
	^aNode concreteClasses.
]

{ #category : #actions }
ASTCTypeAnnotationAST2 >> inferMethodSelector: aSelector for:aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	inferer inferAST: aMethodAST.

	aMethodAST acceptVisitor: self.
	
	^aMethodAST
]

{ #category : #actions }
ASTCTypeAnnotationAST2 >> inferMethodSelector: aSelector for: aClass usingBlock: aBlock [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	inferer infer: aBlock.
	"This removes the block used as an entry point of the inference"
	"This would cause problem for resolution for the methodType otherwise."
	inferer types methodTypes detect:[:aMethodType| aMethodType node isBlock ] ifFound:[:aMethodType| inferer types methodTypes remove:aMethodType].
	aMethodAST acceptVisitor: self.
	
	^aMethodAST
]

{ #category : #accessing }
ASTCTypeAnnotationAST2 >> inferer [
	^inferer
	
]

{ #category : #accessing }
ASTCTypeAnnotationAST2 >> inferer: aPhineasInferer [
	inferer:=aPhineasInferer.
	
]

{ #category : #initialization }
ASTCTypeAnnotationAST2 >> initialize [
	inferer := PhineasInferer new.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitArgumentNode: anArgumentNode [
	| type |
	type := self getTypeForArgumentNode: anArgumentNode.
	self atNewPropertyPut: type
		for: anArgumentNode.
	super visitArgumentNode: anArgumentNode.
	^anArgumentNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitGlobalNode: aGlobalNode [
	| type |
	type := self getTypeForAGlobalNode: aGlobalNode.
	self atNewPropertyPut: type
		for: aGlobalNode.
	super visitGlobalNode: aGlobalNode.
	^aGlobalNode.
	
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitInstanceVariableNode: aInstanceVariableNode [
	| type |
	type := self getTypeForInstanceVariableNode: aInstanceVariableNode.
	self atNewPropertyPut: type
		for: aInstanceVariableNode.
	super visitInstanceVariableNode: aInstanceVariableNode.
	^aInstanceVariableNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitMessageNode: aMessageNode [
	| type |
	type := self getTypeForMessageNode: aMessageNode.
	self atNewPropertyPut: type
		for: aMessageNode.
	super visitMessageNode: aMessageNode.
	^aMessageNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitMethodNode: aMethodNode [
	| type |
	type := self getTypeForAMethodNode:aMethodNode.
	self atNewPropertyPut: type
		for: aMethodNode.
	super visitMethodNode: aMethodNode.
	^aMethodNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitSelfNode: aSelfNode [
	| type |
	type := self getTypeForASelfNode:aSelfNode.
	self atNewPropertyPut: type
		for: aSelfNode.
	super visitSelfNode: aSelfNode.
	^aSelfNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitTemporaryNode: aTemporaryNode [
	| type |
	type := self getTypeForATemporaryNode: aTemporaryNode.
	self atNewPropertyPut: type
		for: aTemporaryNode.
	super visitTemporaryNode: aTemporaryNode.
	^aTemporaryNode.
	
]
