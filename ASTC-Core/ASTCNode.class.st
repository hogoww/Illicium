Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'pharoNode',
		'comment',
		'parent'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #visiting }
ASTCNode >> acceptVisitor: aVisitor [
	^ aVisitor visitNode: self
]

{ #category : #'fillFram-support' }
ASTCNode >> add: aNode [
	(aNode isPreprocessorInclude
		and: [ self addPreprocessorInclude: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreprocessorDefine
		and: [ self addPreprocessorDefine: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreprocessorIf and: [ self addPreprocessorIf: aNode ])
		ifTrue: [ ^ self ].
	(aNode isRawDeclaration and: [ self addRawDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDoWhile and: [ self addDoWhile: aNode ])
		ifTrue: [ ^ self ].
	(aNode isWhile and: [ self addWhile: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAbstractWhile and: [ self addAbstractWhile: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFor and: [ self addFor: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLoop and: [ self addLoop: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBreak and: [ self addBreak: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBlock and: [ self addBlock: aNode ])
		ifTrue: [ ^ self ].
	(aNode isSwitchCase and: [ self addSwitchCase: aNode ])
		ifTrue: [ ^ self ].
	(aNode isSwitch and: [ self addSwitch: aNode ])
		ifTrue: [ ^ self ].
	(aNode isIf and: [ self addIf: aNode ])
		ifTrue: [ ^ self ].
	(aNode isReturn and: [ self addReturn: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDeclarationStatement
		and: [ self addDeclarationStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isExpressionStatement
		and: [ self addExpressionStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isEmptyStatement and: [ self addEmptyStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isExpressionList and: [ self addExpressionList: aNode ])
		ifTrue: [ ^ self ].
	(aNode isRawCCode and: [ self addRawCCode: aNode ])
		ifTrue: [ ^ self ].
	(aNode isIdentifier and: [ self addIdentifier: aNode ])
		ifTrue: [ ^ self ].
	(aNode isNegationOperator and: [ self addNegationOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseNotOperator
		and: [ self addBitwiseNotOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseOrOperator and: [ self addBitwiseOrOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseXorOperator
		and: [ self addBitwiseXorOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAssignmentAdditionOperator
		and: [ self addAssignmentAdditionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitRightShiftOperator
		and: [ self addBitRightShiftOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitLeftShiftOperator
		and: [ self addBitLeftShiftOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAddressOfOperator and: [ self addAddressOfOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructAccessStaticOperator
		and: [ self addStructAccessStaticOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isModuloOperator and: [ self addModuloOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBitwiseAndOperator
		and: [ self addBitwiseAndOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructAccessPointerOperator
		and: [ self addStructAccessPointerOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLesserOrEqualOperator
		and: [ self addLesserOrEqualOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLesserOperator and: [ self addLesserOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isGreaterOrEqualOperator
		and: [ self addGreaterOrEqualOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isGreaterOperator and: [ self addGreaterOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isInequalityOperator
		and: [ self addInequalityOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isEqualityOperator and: [ self addEqualityOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAndOperator and: [ self addAndOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isOrOperator and: [ self addOrOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isIndexerOperator and: [ self addIndexerOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDivisionOperator and: [ self addDivisionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isMultiplicationOperator
		and: [ self addMultiplicationOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isSubtractionOperator
		and: [ self addSubtractionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAdditionOperator and: [ self addAdditionOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isAssignmentOperator
		and: [ self addAssignmentOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLogicalNotOperator
		and: [ self addLogicalNotOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isCastOperator and: [ self addCastOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreDecrementOperator
		and: [ self addPreDecrementOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isPreIncrementOperator
		and: [ self addPreIncrementOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isTernaryConditionalOperator
		and: [ self addTernaryConditionalOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isBinaryOperator and: [ self addBinaryOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isUnaryOperator and: [ self addUnaryOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isOperator and: [ self addOperator: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFunctionCall and: [ self addFunctionCall: aNode ])
		ifTrue: [ ^ self ].
	(aNode isLiteral and: [ self addLiteral: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructureDefinition
		and: [ self addStructureDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStructureDeclaration
		and: [ self addStructureDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isVariableDefinition
		and: [ self addVariableDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isVariableDeclaration
		and: [ self addVariableDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFunctionDefinition
		and: [ self addFunctionDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isFunctionDeclaration
		and: [ self addFunctionDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isType and: [ self addType: aNode ])
		ifTrue: [ ^ self ].
	(aNode isStatement and: [ self addStatement: aNode ])
		ifTrue: [ ^ self ].
	(aNode isExpression and: [ self addExpression: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDeclaration and: [ self addDeclaration: aNode ])
		ifTrue: [ ^ self ].
	(aNode isDefinition and: [ self addDefinition: aNode ])
		ifTrue: [ ^ self ].
	(aNode isCompilationUnit and: [ self addCompilationUnit: aNode ])
		ifTrue: [ ^ self ].
	(aNode isProject and: [ self addProject: aNode ])
		ifTrue: [ ^ self ].
	(aNode isNode and: [ self addNode: aNode ])
		ifTrue: [ ^ self ].
	TypeError new
		actualType: aNode class name;
		signal
]

{ #category : #'fillFram-support' }
ASTCNode >> addAbstractWhile: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addAdditionOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addAddressOfOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addAndOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addAssignmentAdditionOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addAssignmentOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBinaryOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBitLeftShiftOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBitRightShiftOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBitwiseAndOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBitwiseNotOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBitwiseOrOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBitwiseXorOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBlock: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addBreak: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addCastOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addCompilationUnit: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addDeclaration: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addDeclarationStatement: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addDefinition: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addDivisionOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addDoWhile: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addEmptyStatement: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addEqualityOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addExpression: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addExpressionList: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addExpressionStatement: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addFor: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addFunctionCall: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addFunctionDeclaration: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addFunctionDefinition: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addGreaterOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addGreaterOrEqualOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addIdentifier: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addIf: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addIndexerOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addInequalityOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addLesserOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addLesserOrEqualOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addLiteral: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addLogicalNotOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addLoop: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addModuloOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addMultiplicationOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addNegationOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addNode: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addOrOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addPreDecrementOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addPreIncrementOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addPreprocessorDefine: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addPreprocessorIf: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addPreprocessorInclude: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addProject: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addRawCCode: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addRawDeclaration: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addReturn: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addStatement: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addStructAccessPointerOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addStructAccessStaticOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addStructureDeclaration: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addStructureDefinition: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addSubtractionOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addSwitch: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addSwitchCase: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addTernaryConditionalOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addType: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addUnaryOperator: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addVariableDeclaration: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addVariableDefinition: aNode [
	^ false
]

{ #category : #'fillFram-support' }
ASTCNode >> addWhile: aNode [
	^ false
]

{ #category : #accessing }
ASTCNode >> comment [
	^ comment
]

{ #category : #accessing }
ASTCNode >> comment: aComment [
	comment := aComment
]

{ #category : #enumerating }
ASTCNode >> fillFrom: aCollection with: aBlock [
	"same method as Collection >> #fillFrom:with:"	
	"enables the use of collect."	
	aCollection do: [ :each | self add: (aBlock value: each) ]
]

{ #category : #testing }
ASTCNode >> isAbstractWhile [
	^ false
]

{ #category : #testing }
ASTCNode >> isAdditionOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isAddressOfOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isAndOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isAssignmentAdditionOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isAssignmentOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBinaryOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBitLeftShiftOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBitRightShiftOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBitwiseAndOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBitwiseNotOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBitwiseOrOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBitwiseXorOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isBlock [
	^ false
]

{ #category : #testing }
ASTCNode >> isBreak [
	^ false
]

{ #category : #testing }
ASTCNode >> isCastOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isCompilationUnit [
	^ false
]

{ #category : #testing }
ASTCNode >> isDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isDeclarationStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isDivisionOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isDoWhile [
	^ false
]

{ #category : #testing }
ASTCNode >> isEmptyStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isEqualityOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isExpression [
	^ false
]

{ #category : #testing }
ASTCNode >> isExpressionList [
	^ false
]

{ #category : #testing }
ASTCNode >> isExpressionStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isFor [
	^ false
]

{ #category : #testing }
ASTCNode >> isFunctionCall [
	^ false
]

{ #category : #testing }
ASTCNode >> isFunctionDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isFunctionDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isGreaterOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isGreaterOrEqualOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isIdentifier [
	^ false
]

{ #category : #testing }
ASTCNode >> isIf [
	^ false
]

{ #category : #testing }
ASTCNode >> isIndexerOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isInequalityOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isLesserOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isLesserOrEqualOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isLiteral [
	^ false
]

{ #category : #testing }
ASTCNode >> isLogicalNotOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isLoop [
	^ false
]

{ #category : #testing }
ASTCNode >> isModuloOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isMultiplicationOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isNegationOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isNode [
	^ true
]

{ #category : #testing }
ASTCNode >> isOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isOrOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isPreDecrementOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isPreIncrementOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isPreprocessorDefine [
	^ false
]

{ #category : #testing }
ASTCNode >> isPreprocessorIf [
	^ false
]

{ #category : #testing }
ASTCNode >> isPreprocessorInclude [
	^ false
]

{ #category : #testing }
ASTCNode >> isProject [
	^ false
]

{ #category : #testing }
ASTCNode >> isRawCCode [
	^ false
]

{ #category : #testing }
ASTCNode >> isRawDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isReturn [
	^ false
]

{ #category : #testing }
ASTCNode >> isStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isStructAccessPointerOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isStructAccessStaticOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isStructureDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isStructureDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isSubtractionOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isSwitch [
	^ false
]

{ #category : #testing }
ASTCNode >> isSwitchCase [
	^ false
]

{ #category : #testing }
ASTCNode >> isTernaryConditionalOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isType [
	^ false
]

{ #category : #testing }
ASTCNode >> isUnaryOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isVariableDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isVariableDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isWhile [
	^ false
]

{ #category : #accessing }
ASTCNode >> parent [
	^ parent
]

{ #category : #accessing }
ASTCNode >> pharoNode [
	^ pharoNode
]

{ #category : #accessing }
ASTCNode >> pharoNode: aPharoNode [
	pharoNode := aPharoNode
]
