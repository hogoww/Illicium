Class {
	#name : #ASTCSlangPluginPrettyPrinter,
	#superclass : #ASTCSlangPrettyPrinter,
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ASTCSlangPluginPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  stream << 'EXPORT('.
  aTypeNode acceptVisitor: self.
  stream << ')'
]
