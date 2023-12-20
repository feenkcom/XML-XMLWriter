Class {
	#name : #BaselineOfXMLWriterForGlamorousToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfXMLWriterForGlamorousToolkit
}

{ #category : #baselines }
BaselineOfXMLWriterForGlamorousToolkit >> baseline: spec [
	<baseline>
	
	spec 
		for: #common
		do: [ 
			
			"Prerequisite Projects"			
			spec
				baseline: 'OrderPreservingDictionary'
				with: [ 
					spec
						repository: 'github://pharo-contributions/OrderPreservingDictionary/src' ]. 
								
			"Packages"
			spec 
				package: 'XML-Writer-Core' with: [ 
					spec requires: #('OrderPreservingDictionary') ];
				package: 'XML-Writer-Tests' with: [ 
					spec requires: #('XML-Writer-Core') ].
		].
]
