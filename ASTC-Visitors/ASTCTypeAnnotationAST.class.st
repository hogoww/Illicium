Class {
	#name : #ASTCTypeAnnotationAST,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer',
		'methodType',
		'methodTypeDispatcher'
	],
	#category : #'ASTC-Visitors-RBAnnotations'
}

{ #category : #accessing }
ASTCTypeAnnotationAST class >> property [
	"should return a symbol with the name of the property"
	^#type
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getMethodNodeForAMethodNode: aMethodNode [ 

	methodType := inferer types 
		methodTypes 
			detect:[:aMethodType|
					aMethodType node isMethod and:[aMethodType selector = aMethodNode selector] ].
	^methodType.
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getMethodTypeType [
	^methodType receiver
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForAGlobalNode: aGlobalNode [
	| type |
	"Works only for classes so far."
	"Globals variables such as Smalltalk / Transcript can't be supported so far."
	type := inferer inferGlobalNode: aGlobalNode.
	^type concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForAMethodNode: aMethodNode [ 
	^(self getMethodNodeForAMethodNode: aMethodNode) returnType concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForASelfNode: aRBSelfNode [ 
	^self getMethodTypeType concreteClasses.
]

{ #category : #actions }
ASTCTypeAnnotationAST >> getTypeForATemporaryNode: aRBTemporaryNode [ 
	| selector method |
	selector:=aRBTemporaryNode methodNode selector.
	method:=inferer types methodTypes detect:[:aMethod| aMethod node selector = selector].
	^(method variableAt: aRBTemporaryNode name asSymbol 
		ifAbsent:[self error: 'Phineas couldn''t type the temporary variable : ', aRBTemporaryNode name asSymbol ]) 
			ifNotNil:[:aVariable| aVariable concreteClasses].
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForArgumentNode: anArgumentNode [
	^self getTypeForATemporaryNode: anArgumentNode.
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForInstanceVariableNode: aInstanceVariableNode [ 
	^(methodType receiver instanceVariable: aInstanceVariableNode name) concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForMessageNode: aRBMessageNode [
	| aNode |
	aNode:=inferer types messageTypes detect:[:each| each message = aRBMessageNode ].
	^aNode concreteClasses.
]

{ #category : #actions }
ASTCTypeAnnotationAST >> inferMethodSelector: aSelector for:aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	inferer inferAST: aMethodAST.

	aMethodAST acceptVisitor: self.
	
	^aMethodAST
]

{ #category : #actions }
ASTCTypeAnnotationAST >> inferMethodSelector: aSelector for: aClass usingBlock: aBlock [
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
ASTCTypeAnnotationAST >> inferer [
	^inferer
	
]

{ #category : #accessing }
ASTCTypeAnnotationAST >> inferer: aPhineasInferer [
	inferer:=aPhineasInferer.
	
]

{ #category : #'as yet unclassified' }
ASTCTypeAnnotationAST >> initialize [
	methodTypeDispatcher:= PIGetMethodTypeDispatcher new.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitArgumentNode: anArgumentNode [
	| type |
	type := self getTypeForArgumentNode: anArgumentNode.
	self atNewPropertyPut: type
		for: anArgumentNode.
	super visitArgumentNode: anArgumentNode.
	^anArgumentNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitGlobalNode: aGlobalNode [
	| type |
	type := self getTypeForAGlobalNode: aGlobalNode.
	self atNewPropertyPut: type
		for: aGlobalNode.
	super visitGlobalNode: aGlobalNode.
	^aGlobalNode.
	
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitInstanceVariableNode: aInstanceVariableNode [
	| type |
	type := self getTypeForInstanceVariableNode: aInstanceVariableNode.
	self atNewPropertyPut: type
		for: aInstanceVariableNode.
	super visitInstanceVariableNode: aInstanceVariableNode.
	^aInstanceVariableNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMessageNode: aMessageNode [
	| type |
	type := self getTypeForMessageNode: aMessageNode.
	self atNewPropertyPut: type
		for: aMessageNode.
	super visitMessageNode: aMessageNode.
	^aMessageNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMethodNode: aMethodNode [
	| type |
	type := self getTypeForAMethodNode:aMethodNode.
	self atNewPropertyPut: type
		for: aMethodNode.
	
	((self getMethodNodeForAMethodNode: aMethodNode) accept: methodTypeDispatcher) ifTrue:[
		super visitMethodNode: aMethodNode.
	].
	^aMethodNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSelfNode: aSelfNode [
	| type |
	type := self getTypeForASelfNode:aSelfNode.
	self atNewPropertyPut: type
		for: aSelfNode.
	super visitSelfNode: aSelfNode.
	^aSelfNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitTemporaryNode: aTemporaryNode [
	| type |
	type := self getTypeForATemporaryNode: aTemporaryNode.
	self atNewPropertyPut: type
		for: aTemporaryNode.
	super visitTemporaryNode: aTemporaryNode.
	^aTemporaryNode.
	
]
