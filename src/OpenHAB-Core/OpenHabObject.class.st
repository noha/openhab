Class {
	#name : #OpenHabObject,
	#superclass : #Object,
	#instVars : [
		'client'
	],
	#category : #'OpenHAB-Core'
}

{ #category : #accessing }
OpenHabObject >> client [

	^ client
]

{ #category : #accessing }
OpenHabObject >> client: anObject [

	client := anObject
]
