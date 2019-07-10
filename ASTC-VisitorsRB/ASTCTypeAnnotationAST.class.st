Class {
	#name : #ASTCTypeAnnotationAST,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer',
		'methodType',
		'methodTypeDispatcher'
	],
	#category : #'ASTC-VisitorsRB-Typing'
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
ASTCTypeAnnotationAST >> getTypeForAGlobalNode: aGlobalNode [
	| type |
	"Works only for classes so far."
	"Globals variables such as Smalltalk / Transcript can't be supported so far."
	type := inferer inferGlobalNode: aGlobalNode.
	^type concreteClasses.
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForALiteralNode: aLiteralNode [
	^ {aLiteralNode value class}
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForAMessageNode: aMessageNode [
	| aNode |
	aNode := inferer types messageTypes
		detect: [ :each | each message = aMessageNode ].
	^ aNode concreteClasses
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForAMethodNode: aMethodNode [
	^ (self getMethodNodeForAMethodNode: aMethodNode) returnType
		concreteClasses
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForASelfNode: aSelfNode [
	^ methodType receiver concreteClasses
]

{ #category : #actions }
ASTCTypeAnnotationAST >> getTypeForATemporaryNode: aTemporaryNode [
	^aTemporaryNode isBlockVar
		ifTrue:[ self getTypeForATemporaryNodeInABlock: aTemporaryNode ]
		ifFalse:[ self getTypeForATemporaryNodeInAMethod: aTemporaryNode ]
]

{ #category : #actions }
ASTCTypeAnnotationAST >> getTypeForATemporaryNodeInABlock: anArgumentNode [
	| block phineasBlock |
	block := (anArgumentNode whoDefines: anArgumentNode name) parent.

	phineasBlock := inferer types blockTypes
		detect: [ :aBlock | aBlock node = block ].
	^ (phineasBlock
		variableAt: anArgumentNode name asSymbol
		ifAbsent: [ self
				error:
					'Phineas couldn''t type the temporary variable : '
						, anArgumentNode name asSymbol ])
		ifNotNil: [ :aVariable | aVariable concreteClasses ]
]

{ #category : #actions }
ASTCTypeAnnotationAST >> getTypeForATemporaryNodeInAMethod: aTemporaryNode [
	| selector method |
	selector := aTemporaryNode methodNode selector.
	method := inferer types methodTypes
		detect: [ :aMethod | aMethod node selector = selector ].
	^ (method
		variableAt: aTemporaryNode name asSymbol
		ifAbsent: [ self
				error:
					'Phineas couldn''t type the temporary variable : '
						, aTemporaryNode name asSymbol ])
		ifNotNil: [ :aVariable | aVariable concreteClasses ]
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForAnArgumentNode: anArgumentNode [
	^anArgumentNode isBlockVar
		ifTrue:[ self getTypeForAnArgumentNodeInABlock: anArgumentNode ]
		ifFalse:[ self getTypeForAnArgumentNodeInAMethod: anArgumentNode ]
]

{ #category : #actions }
ASTCTypeAnnotationAST >> getTypeForAnArgumentNodeInABlock: anArgumentNode [
	| block phineasBlock |
	block := (anArgumentNode whoDefines: anArgumentNode name).
	block isBlock ifFalse:[ block:= block parent ]. "weird, but 'whoDefines' return's varies."

	phineasBlock := inferer types blockTypes
		detect: [ :aBlock | aBlock node = block ].
	^ (phineasBlock
		variableAt: anArgumentNode name asSymbol
		ifAbsent: [ self
				error:
					'Phineas couldn''t type the temporary variable : '
						, anArgumentNode name asSymbol ])
		ifNotNil: [ :aVariable | aVariable concreteClasses ]
]

{ #category : #actions }
ASTCTypeAnnotationAST >> getTypeForAnArgumentNodeInAMethod: anArgumentNode [
	^ self getTypeForATemporaryNodeInAMethod: anArgumentNode
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeForAnInstanceVariableNode: anInstanceVariableNode [
	^ (methodType receiver instanceVariable: anInstanceVariableNode name)
		concreteClasses
]

{ #category : #typing }
ASTCTypeAnnotationAST >> getTypeOfInstanceVariable: instanceVarName ofClass: aClass [
	^ ((inferer typeForClass: aClass) instanceVariable: instanceVarName)
		concreteClasses
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

{ #category : #initialization }
ASTCTypeAnnotationAST >> initialize [
	methodTypeDispatcher:= PIIsMethodTypeInterpreted new.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitArgumentNode: anArgumentNode [
	| type |
	type := self getTypeForAnArgumentNode: anArgumentNode.
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
	type := self getTypeForAnInstanceVariableNode: aInstanceVariableNode.
	self atNewPropertyPut: type
		for: aInstanceVariableNode.
	super visitInstanceVariableNode: aInstanceVariableNode.
	^aInstanceVariableNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitLiteralNode: aLiteralNode [
	| type |
	type := self getTypeForALiteralNode: aLiteralNode.
	self atNewPropertyPut: type
		for: aLiteralNode .
	super visitLiteralNode: aLiteralNode.
	^aLiteralNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMessageNode: aMessageNode [
	| type |
	type := self getTypeForAMessageNode: aMessageNode.
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
	
	"The type inferencer doesn't type some methods, such as primitives."
	"The methodTypeDispatcher tells me if he did, in fact, type this method"
	((self getMethodNodeForAMethodNode: aMethodNode) accept: methodTypeDispatcher) ifTrue:[ 
		super visitMethodNode: aMethodNode."walk the method's ast"
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
