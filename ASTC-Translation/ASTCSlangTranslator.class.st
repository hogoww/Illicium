Class {
	#name : #ASTCSlangTranslator,
	#superclass : #ASTCTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #initialization }
ASTCSlangTranslator >> initialize [
	classTranslator := ASTCSlangClassTranslator new
		mainTranslator: self;
		yourself.
	replacementClasses := Dictionary new
		at: SmallInteger put: ASTCSmallInteger;
		at: Boolean put: ASTCBoolean;
		at: String put: ASTCString;
		at: ASTCUserClass put: ASTCUserClass;
		at: InterpreterProxy put: ASTCVirtualMachineProxy;
		yourself
]
