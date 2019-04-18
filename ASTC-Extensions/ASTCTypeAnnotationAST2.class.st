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
	[type:=self getTypeForInstanceVariableNode: aGlobalNode] on:Error do:[
		type:= inferer infer: aGlobalNode name.
	].
	^type.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForAMethodNode: aMethodNode [ 
	methodType:= inferer types 
		methodTypes 
			detect:[:aMethodType|
					aMethodType node isMethod and:[aMethodType selector = aMethodNode selector]].
	^methodType returnType.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForASelfNode: aRBSelfNode [ 
	^self getMethodTypeType.
]

{ #category : #actions }
ASTCTypeAnnotationAST2 >> getTypeForATemporaryNode: aRBTemporaryNode [ 
	| selector method |
	selector:=aRBTemporaryNode methodNode selector.
	method:=inferer types methodTypes detect:[:aMethod| aMethod node selector = selector].
	^method variableAt: aRBTemporaryNode name asSymbol
		ifAbsent:[self error: 'Phineas couldn''t type the temporary variable : ', aRBTemporaryNode name asSymbol ].
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForArgumentNode: anArgumentNode [
	self getTypeForATemporaryNode: anArgumentNode.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForInstanceVariableNode: aInstanceVariableNode [ 
	methodType receiver instanceVariable: aInstanceVariableNode name.
]

{ #category : #typing }
ASTCTypeAnnotationAST2 >> getTypeForMessageNode: aRBMessageNode [ 	
	| aNode |
	aNode:=inferer types messageTypes detect:[:each| each message = aRBMessageNode ].
	^aNode concreteClass.
]

{ #category : #actions }
ASTCTypeAnnotationAST2 >> inferBlock: aBlock [
	| aMethodAST |

	inferer infer: aBlock.

	inferer types methodTypes do:[:each| each isBlock ifTrue:[inferer types methodTypes remove:each] ].

	aMethodAST acceptVisitor: self.
	
	
	^aMethodAST
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
ASTCTypeAnnotationAST2 >> inferMethodSelector: aSelector for:aClass using:aBlock [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	inferer infer: aBlock.

	aMethodAST acceptVisitor: self.
	
	^aMethodAST
]

{ #category : #actions }
ASTCTypeAnnotationAST2 >> inferMethodSelector: aSelector for: aClass usingBlock: aBlock [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.

	inferer infer: aBlock.
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
	type:= self getTypeForAGlobalNode: aGlobalNode.
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
	type:= self getTypeForMessageNode: aMessageNode.
	self atNewPropertyPut: type
		for: aMessageNode.
	super visitMessageNode: aMessageNode.
	^aMessageNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitMethodNode: aMethodNode [
	| type |
	type:= self getTypeForAMethodNode:aMethodNode.
	self atNewPropertyPut: type
		for: aMethodNode.
	super visitMethodNode: aMethodNode.
	^aMethodNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitSelfNode: aSelfNode [
	| type |
	type:= self getTypeForASelfNode:aSelfNode.
	self atNewPropertyPut: type
		for: aSelfNode.
	super visitSelfNode: aSelfNode.
	^aSelfNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitTemporaryNode: aTemporaryNode [
	| type |
	self flag:#wrongData."PIVariableType: (PIMessageType(RBMessageNode(1 * (self factorialR: 0 - 1)), PIConcreteType(SmallInteger) ) PIConcreteType(SmallInteger) ) is put in the node. need to find how to access it the underlying type"
	
	self flag:#OoO. "Out of Order. waiting for Marcus answer on RBAST behavior"
	type:= self getTypeForATemporaryNode: aTemporaryNode.
	self atNewPropertyPut: type
		for: aTemporaryNode.
	super visitTemporaryNode: aTemporaryNode.

	^aTemporaryNode.
	
]
