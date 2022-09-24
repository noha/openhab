Class {
	#name : #OHApiLink,
	#superclass : #OpenHabObject,
	#instVars : [
		'url',
		'type'
	],
	#category : #'OpenHAB-Core'
}

{ #category : #accessing }
OHApiLink class >> neoJsonMapping: mapper [
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(type url)  ].
	
]

{ #category : #'as yet unclassified' }
OHApiLink >> inspectionReal [
	<inspectorPresentationOrder: 0 title: 'real'>
	
	^ StRawInspection on: (NeoJSONReader fromString: (client 
		fetchUrl: url))
]

{ #category : #printing }
OHApiLink >> printOn: aStream [ 
	aStream << 'link: ' << type asString
]

{ #category : #accessing }
OHApiLink >> type [

	^ type
]

{ #category : #accessing }
OHApiLink >> type: anObject [

	type := anObject
]

{ #category : #accessing }
OHApiLink >> url [

	^ url
]

{ #category : #accessing }
OHApiLink >> url: anObject [

	url := anObject
]
