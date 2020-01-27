Extension { #name : #ASTCPrinterVisitor }

{ #category : #'*ASTC-Core-Extensions' }
ASTCPrinterVisitor >> visitNode: aNode [
	"remove print of the comment, not relevant in the ast"
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aNode'.
  currentDepth := currentDepth + 1.
  super visitNode: aNode.
  currentDepth := currentDepth - 1.
  stream << ')'
]
