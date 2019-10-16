Class {
	#name : #ASTCBrokenPluginTranslationTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testNoPopButPush [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"

	| cu declaration definition statement operands interpreterProxyDecl |
	cu := translator translateMethod: #primitiveNoPopButPush fromClass: BrokenPlugin.
	
	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy.
	
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass.
	self assert: declaration id id equals: 'primitiveNoPopButPush'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition:= cu definitions at:1.
		self assert:definition body statements size equals: 1.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isOperator.
			self assert: statement expression symbol equals: '->'.
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
	^ cu
]

{ #category : #tests }
ASTCBrokenPluginTranslationTest >> testPopAndFail [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu declaration definition statement operands argument interpreterProxyDecl |
	cu := translator translateMethod: #primitivePopAndFail fromClass: BrokenPlugin.
	
	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy.
	
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass.
	self assert: declaration id id equals: 'primitivePopAndFail'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition := cu definitions at:1.
		self assert: definition body statements size equals: 2.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isOperator.
			self assert: statement expression symbol equals: '->'.
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
				self assert: argument isOperator.
				self assert: argument symbol equals: #+.
				self assert: argument operands size equals: 2.
					
					"interpreterProxy -> methodArgument"
					self assert: argument operands first isOperator.
					self assert: argument operands first symbol equals: #->.
					self assert: argument operands first operands first id equals: #interpreterProxy.

					self assert: argument operands first operands second isFunctionCall.
					self assert: argument operands first operands second id id equals: #methodArgumentCount.
					self assert: argument operands first operands second arguments size equals: 0.
					
				self assert: argument operands second isLiteral.
				self assert: argument operands second value value equals: 1.
		
		"second statement interpreterProxy primitiveFail"
		self assert: definition body statements second isExpressionStatement.
		statement := definition body statements second expression.
		self assert: statement isOperator.
		self assert: statement symbol equals: #->.
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
	cu := translator translateMethod: #primitivePopLessThanExpected fromClass: BrokenPlugin.

	"declaration checks"
	self assert: cu isStructuralyValidAST.
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy.
	
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass.
	self assert: declaration id id equals: 'primitivePopLessThanExpected'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition:= cu definitions at:1.
		self assert:definition body statements size equals: 1.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isOperator.
			self assert: statement expression symbol equals: '->'.
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
				self assert: argument isOperator.
				self assert: argument symbol equals: #-.
				self assert: argument operands size equals: 2.
					
					"interpreterProxy -> methodArgument"
					self assert: argument operands first isOperator.
					self assert: argument operands first symbol equals: #->.
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
	cu := translator translateMethod: #primitivePopMoreThanExpected fromClass: BrokenPlugin.

	"declaration checks"
	"ïnstance variable"
	interpreterProxyDecl := cu declarations at:1.
	self assert: interpreterProxyDecl id id equals: #interpreterProxy.
	self assert: interpreterProxyDecl type type equals: ASTCVirtualMachineProxy.
	
	self assert: cu isStructuralyValidAST.
	declaration := cu declarations at:2.
	self assert: declaration type type equals: ASTCUserClass.
	self assert: declaration id id equals: 'primitivePopMoreThanExpected'.
	self assert: declaration parameters isEmpty.
	
	"body stuff"
		definition:= cu definitions at:1.
		self assert:definition body statements size equals: 1.
	
	"the only statement/expression check"
			statement := definition body statements first.
			self assert: statement isExpressionStatement.	
			self assert: statement expression isOperator.
			self assert: statement expression symbol equals: '->'.
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
				self assert: argument isOperator.
				self assert: argument symbol equals: #+.
				self assert: argument operands size equals: 2.
					
					"interpreterProxy -> methodArgument"
					self assert: argument operands first isOperator.
					self assert: argument operands first symbol equals: #->.
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
	cu := translator translateClass: BrokenPlugin.
	^ cu
]
