Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Gen-visitor'
}

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCCompilationUnit: anASTCCompilationUnit [
	self walkASTCCompilationUnit: anASTCCompilationUnit.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCDeclaration: anASTCDeclaration [
	self walkASTCDeclaration: anASTCDeclaration.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCDefinition: anASTCDefinition [
	self walkASTCDefinition: anASTCDefinition.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCExpression: anASTCExpression [
	self walkASTCExpression: anASTCExpression.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCNode: anASTCNode [
	self walkASTCNode: anASTCNode.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCProject: anASTCProject [
	self walkASTCProject: anASTCProject.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCStatement: anASTCStatement [
	self walkASTCStatement: anASTCStatement.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCType: anASTCType [
	self walkASTCType: anASTCType.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCCompilationUnit: anASTCCompilationUnit [
	self walkASTCCompilationUnitDefinitions: anASTCCompilationUnit.
	self walkASTCCompilationUnitDeclarations: anASTCCompilationUnit.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitDeclarations:anASTCCompilationUnit [
	anASTCCompilationUnit declarations
		ifNotNil:[ :declarations | declarations
			do:[ :aDeclaration | aDeclaration acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitDefinitions:anASTCCompilationUnit [
	anASTCCompilationUnit definitions
		ifNotNil:[ :definitions | definitions
			do:[ :aDefinition | aDefinition acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitParent:anASTCCompilationUnit [
	anASTCCompilationUnit parent
		ifNotNil:[ :parent | parent acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDeclaration: anASTCDeclaration [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDefinition: anASTCDefinition [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCExpression: anASTCExpression [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCNode: anASTCNode [

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCNodeParent:anASTCNode [
	anASTCNode parent
		ifNotNil:[ :parent | parent acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCProject: anASTCProject [
	self walkASTCProjectCompilationUnits: anASTCProject.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCProjectCompilationUnits:anASTCProject [
	anASTCProject compilationUnits
		ifNotNil:[ :compilationUnits | compilationUnits
			do:[ :aCompilationUnit | aCompilationUnit acceptVisitor:self ]
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCStatement: anASTCStatement [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCType: anASTCType [
	self walkASTCTypeType: anASTCType.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCTypeType:anASTCType [

]
