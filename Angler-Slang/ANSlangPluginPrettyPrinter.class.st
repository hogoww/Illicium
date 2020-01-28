Class {
	#name : #ANSlangPluginPrettyPrinter,
	#superclass : #ANSlangPrettyPrinter,
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ANSlangPluginPrettyPrinter >> printDeclarationQualifiers: qualifiers [
	"we ignore them. since staticish is added in the type of the declaration"
]

{ #category : #visiting }
ANSlangPluginPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  stream << 'EXPORT('.
  aTypeNode acceptVisitor: self.
  stream << ')'
]
