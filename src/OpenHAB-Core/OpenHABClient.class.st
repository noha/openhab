Class {
	#name : #OpenHABClient,
	#superclass : #Object,
	#instVars : [
		'url',
		'token',
		'apiDescription'
	],
	#category : #'OpenHAB-Core'
}

{ #category : #'as yet unclassified' }
OpenHABClient >> apiDescription [
	^ apiDescription ifNil: [ 
		apiDescription := self fetchApiDescription
			client: self;
			yourself ]
]

{ #category : #'as yet unclassified' }
OpenHABClient >> fetchApiDescription [
	^ NeoJSONReader 
		fromString: (self httpClient 
			url: self url;
			get)
		as: OHAPIDescription 
]

{ #category : #'as yet unclassified' }
OpenHABClient >> fetchUrl: aString [ 
	^ self httpClient 
		url: aString;
		get
]

{ #category : #private }
OpenHABClient >> httpClient [
	^ ZnClient new 
		setBasicAuthenticationUsername: token password: '' 
]

{ #category : #accessing }
OpenHABClient >> links [
	^ self apiDescription at: #links
]

{ #category : #accessing }
OpenHABClient >> token: aString [ 
	token := aString
]

{ #category : #accessing }
OpenHABClient >> url [
	^ url
]

{ #category : #accessing }
OpenHABClient >> url: aString [ 
	url := aString
]
