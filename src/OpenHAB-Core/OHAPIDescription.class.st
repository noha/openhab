Class {
	#name : #OHAPIDescription,
	#superclass : #OpenHabObject,
	#instVars : [
		'version',
		'locale',
		'links'
	],
	#category : #'OpenHAB-Core'
}

{ #category : #accessing }
OHAPIDescription class >> neoJsonMapping: mapper [
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(version locale).
		(mapping mapAccessor: #links) valueSchema: #ArrayOfOHApiLink ].
	
	mapper for: #ArrayOfOHApiLink customDo: [ :mapping |
				mapping listOfElementSchema: OHApiLink  ].
]

{ #category : #accessing }
OHAPIDescription >> client: aClient [ 
	client := aClient.
	links do: [ :each | each client: client  ]
]

{ #category : #accessing }
OHAPIDescription >> links [

	^ links
]

{ #category : #accessing }
OHAPIDescription >> links: anObject [

	links := anObject.

]

{ #category : #accessing }
OHAPIDescription >> locale [

	^ locale
]

{ #category : #accessing }
OHAPIDescription >> locale: anObject [

	locale := anObject
]

{ #category : #accessing }
OHAPIDescription >> version [

	^ version
]

{ #category : #accessing }
OHAPIDescription >> version: anObject [

	version := anObject
]
