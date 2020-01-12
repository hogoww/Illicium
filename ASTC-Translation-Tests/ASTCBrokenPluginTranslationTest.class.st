Class {
	#name : #ASTCBrokenPluginTranslationTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> setUp [
	super setUp.
	pluginClass := BrokenPlugin
]

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testNoPopButPush [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"

	| cu declaration definition statement operands interpreterProxyDecl |
	cu := self translateMethod: #primitiveNoPopButPush.
	
	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCSlangReceiver new asConstraint.
	
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCSlangReceiver new asConstraint.
	self assert: declaration id id equals: 'primitiveNoPopButPush'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition:= cu definitions at:1.
		self assert: definition body statements size equals: 1.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isStructAccessPointerOperator.
				operands:=  statement expression operands.
				"first operand, interpreterProxy"
				self assert: operands size equals: 2.
				self assert: operands first isIdentifier.
				self assert: operands first id equals: 'interpreterProxy'.
				
				"second operand, pushBool: true"
				self assert: operands second isFunctionCall.
				self assert: operands second id id equals: 'pushBool'.
				self assert: operands second arguments size equals: 1.
				self assert: operands second arguments first isLiteral.
				self assert: operands second arguments first value value equals: true.
			"the second statement should be empty, since it's removing the ^ self that slang adds by default."
		statement := definition body statements first.
		self assert: statement isEmptyStatment.
				
	^ cu
]

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testPopAndFail [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu declaration definition statement operands argument interpreterProxyDecl |
	cu := self translateMethod: #primitivePopAndFail.
	
	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy asTypeReification.
	
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass asTypeReification.
	self assert: declaration id id equals: 'primitivePopAndFail'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition := cu definitions at:1.
		self assert: definition body statements size equals: 2.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isStructAccessPointerOperator.
				operands:=  statement expression operands.
				"first operand, interpreterProxy"
				self assert: operands size equals: 2.
				self assert: operands first isIdentifier.
				self assert: operands first id equals: 'interpreterProxy'.
				
				"second operand, pop:"
				self assert: operands second isFunctionCall.
				self assert: operands second id id equals: 'pop'.
				self assert: operands second arguments size equals: 1.
				
				"pop:'s argument, interpreterProxy methodArgumentCount + 1"
				argument := operands second arguments first.
				self assert: argument isAdditionOperator.
				self assert: argument operands size equals: 2.
					
					"interpreterProxy -> methodArgument"
					self assert: argument operands first isStructAccessPointerOperator.
					self assert: argument operands first operands first id equals: #interpreterProxy.

					self assert: argument operands first operands second isFunctionCall.
					self assert: argument operands first operands second id id equals: #methodArgumentCount.
					self assert: argument operands first operands second arguments size equals: 0.
					
				self assert: argument operands second isLiteral.
				self assert: argument operands second value value equals: 1.
		
		"second statement interpreterProxy primitiveFail"
		self assert: definition body statements second isExpressionStatement.
		statement := definition body statements second expression.
		self assert: statement isStructAccessPointerOperator.
		self assert: statement operands size equals: 2.
			self assert: statement operands first isIdentifier.
			self assert: statement operands first id equals: #interpreterProxy.
		
			self assert: statement operands second isFunctionCall.
			self assert: statement operands second id id equals: #primitiveFail.
			self assert: statement operands second arguments size equals: 0.
					
	^ cu
]

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testPopLessThanExpected [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu declaration definition statement operands argument interpreterProxyDecl |
	cu := self translateMethod: #primitivePopLessThanExpected.

	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy asTypeReification.
	
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass asTypeReification.
	self assert: declaration id id equals: 'primitivePopLessThanExpected'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition:= cu definitions at:1.
		self assert:definition body statements size equals: 1.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isStructAccessPointerOperator.
				operands:=  statement expression operands.
				"first operand, interpreterProxy"
				self assert: operands size equals: 2.
				self assert: operands first isIdentifier.
				self assert: operands first id equals: 'interpreterProxy'.
				
				"second operand, pop:"
				self assert: operands second isFunctionCall.
				self assert: operands second id id equals: 'pop'.
				self assert: operands second arguments size equals: 1.
				
				"pop:'s argument, interpreterProxy methodArgumentCount + 1"
				argument := operands second arguments first.
				self assert: argument isSubtractionOperator.
				self assert: argument operands size equals: 2.
					
					"interpreterProxy -> methodArgument"
					self assert: argument operands first isStructAccessPointerOperator.
					self assert: argument operands first operands first id equals: #interpreterProxy.

					self assert: argument operands first operands second isFunctionCall.
					self assert: argument operands first operands second id id equals: #methodArgumentCount.
					self assert: argument operands first operands second arguments size equals: 0.
					
				self assert: argument operands second isLiteral.
				self assert: argument operands second value value equals: 1.
				
	^ cu
]

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testPopMoreThanExpected [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu declaration definition statement operands argument interpreterProxyDecl |
	cu := self translateMethod: #primitivePopMoreThanExpected.

	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy asTypeReification.
	
	self assert: cu isStructuralyValidAST.
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass asTypeReification.
	self assert: declaration id id equals: 'primitivePopMoreThanExpected'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition:= cu definitions at:1.
		self assert:definition body statements size equals: 1.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isStructAccessPointerOperator.
				operands:=  statement expression operands.
				"first operand, interpreterProxy"
				self assert: operands size equals: 2.
				self assert: operands first isIdentifier.
				self assert: operands first id equals: 'interpreterProxy'.
				
				"second operand, pop:"
				self assert: operands second isFunctionCall.
				self assert: operands second id id equals: 'pop'.
				self assert: operands second arguments size equals: 1.
				
				"pop:'s argument, interpreterProxy methodArgumentCount + 1"
				argument := operands second arguments first.
				self assert: argument isAdditionOperator.
				self assert: argument operands size equals: 2.
					
					"interpreterProxy -> methodArgument"
					self assert: argument operands first isStructAccessPointerOperator.
					self assert: argument operands first operands first id equals: #interpreterProxy.

					self assert: argument operands first operands second isFunctionCall.
					self assert: argument operands first operands second id id equals: #methodArgumentCount.
					self assert: argument operands first operands second arguments size equals: 0.
					
				self assert: argument operands second isLiteral.
				self assert: argument operands second value value equals: 4.
				
	^ cu
]

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testTranslateBrokenPlugin [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	
	
	"FAILS BECAUSE class translation was not adapted yet"
	self halt.
	cu := translator translateClass: BrokenPlugin.
	^ cu
]
