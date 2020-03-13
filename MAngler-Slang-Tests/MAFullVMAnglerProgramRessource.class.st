Class {
	#name : #MAFullVMAnglerProgramRessource,
	#superclass : #TestResource,
	#instVars : [
		'program'
	],
	#category : #'MAngler-Slang-Tests-CommonResources'
}

{ #category : #initialization }
MAFullVMAnglerProgramRessource class >> resetInstance [
	<script>
	self reset
]

{ #category : #initializing }
MAFullVMAnglerProgramRessource >> newProgram [
	| classTranslator |
	classTranslator := MASlangVMClassTranslator new.
	program := classTranslator program.
	program prepareWithInferer: classTranslator inferer inTranslator: classTranslator.
	^ program
]

{ #category : #accessing }
MAFullVMAnglerProgramRessource >> program [
	^ program
]

{ #category : #accessing }
MAFullVMAnglerProgramRessource >> program: anObject [
	program := anObject
]

{ #category : #running }
MAFullVMAnglerProgramRessource >> setUp [
	super setUp.
	program := self newProgram
]
