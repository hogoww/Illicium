Class {
	#name : #ASTCMutex,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #accessing }
ASTCMutex class >> asPharoType [ 
	^ #pthread_mutex_t
]

{ #category : #'actions api' }
ASTCMutex >> initialize [
	^ self declare: #var typed: #aType
]

{ #category : #'actions api' }
ASTCMutex >> lock [ 
	^ self messageToFunctionCall: (Message selector: #lock argument: {})
]

{ #category : #'actions api' }
ASTCMutex >> tryLock [
	^ self messageToFunctionCall: (Message selector: #lock argument: {})
	
]

{ #category : #'actions api' }
ASTCMutex >> unlock [
	^ self messageToFunctionCall: (Message selector: #lock argument: {})
]
