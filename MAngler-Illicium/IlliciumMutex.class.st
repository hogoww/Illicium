Class {
	#name : #IlliciumMutex,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #accessing }
IlliciumMutex class >> asPharoType [ 
	^ #pthread_mutex_t
]

{ #category : #'actions api' }
IlliciumMutex >> initialize [
	^ self declare: #var typed: #aType
]

{ #category : #'actions api' }
IlliciumMutex >> lock [ 
	^ self messageToFunctionCall: (Message selector: #lock argument: {})
]

{ #category : #'actions api' }
IlliciumMutex >> tryLock [
	^ self messageToFunctionCall: (Message selector: #lock argument: {})
	
]

{ #category : #'actions api' }
IlliciumMutex >> unlock [
	^ self messageToFunctionCall: (Message selector: #lock argument: {})
]
