Class {
	#name : #MASlangPluginPrettyPrinter,
	#superclass : #MASlangPrettyPrinter,
	#category : #'Angler-Slang-prettyprint'
}

{ #category : #visiting }
MASlangPluginPrettyPrinter >> printDeclarationQualifiers: qualifiers [
	"we ignore them. since staticish is added in the type of the declaration"
]

{ #category : #visiting }
MASlangPluginPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  stream << 'EXPORT('.
  aTypeNode acceptVisitor: self.
  stream << ')'
]
