Class {
	#name : #ANSlangPluginPrettyPrinter,
	#superclass : #ANSlangPrettyPrinter,
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ANSlangPluginPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  stream << 'EXPORT('.
  aTypeNode acceptVisitor: self.
  stream << ')'
]
