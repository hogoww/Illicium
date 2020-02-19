Class {
	#name : #ASTCAbstractCheckVisitor,
	#superclass : #RBProgramNodeVisitor,
	#category : #'FAngler-RB-Visitors-AbstractVisitor'
}

{ #category : #accessing }
ASTCAbstractCheckVisitor class >> property [
	"should return a symbol with the name of the property"
	^self subclassResponsibility  
]

{ #category : #accessing }
ASTCAbstractCheckVisitor >> atNewProperty: aProperty put: aValue for: aNode [
	"similar to #at:put:, but check that this didn't exists previously"

	"(aNode propertyAt: aProperty
		ifPresent:[:assoc|
			 Warning new signal:
				(String streamContents:[:s| s << ' visitor property conflict. ''' << aProperty << ''' already exists for instance of ' << aNode class name ])]
		ifAbsent: [ "aNode propertyAt: aProperty put: aValue. "])."
		
	^aValue
]

{ #category : #accessing }
ASTCAbstractCheckVisitor >> atNewPropertyPut: aValue for: aNode [
	"shortcut"

	^ self atNewProperty: self class property put: aValue for: aNode
]

{ #category : #accessing }
ASTCAbstractCheckVisitor >> visitMethodNode: aMethodNode [
	"we remove the visit of pragmas"
	self visitArgumentNodes: aMethodNode arguments.
	self visitNode: aMethodNode body
]
