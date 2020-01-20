Class {
	#name : #ASTCSlangPluginPrettyPrinter,
	#superclass : #ASTCSlangPrettyPrinter,
	#category : #'ASTC-VisitorsASTC-PrettyPrint'
}

{ #category : #visiting }
ASTCSlangPluginPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  stream << 'EXPORT('.
  aTypeNode acceptVisitor: self.
  stream << ')'
]
