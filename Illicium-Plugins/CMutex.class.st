Class {
	#name : #CMutex,
	#superclass : #Object,
	#instVars : [
		'isLocked'
	],
	#category : #'Illicium-Plugins-ThreadedFFI'
}

{ #category : #'actions api' }
CMutex >> initialize [
	isLocked := false.
]

{ #category : #'actions api' }
CMutex >> lock [
	isLocked := true
]

{ #category : #'actions api' }
CMutex >> tryLock [
	[ isLocked ] whileTrue:[ ].
	self lock
]

{ #category : #'actions api' }
CMutex >> unlock [
	isLocked := false
]
