Class {
	#name : #BaselineOfXMLWriterForGlamorousToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfXMLWriterForGlamorousToolkit
}

{ #category : #baseline }
BaselineOfXMLWriterForGlamorousToolkit >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'OrderPreservingDictionary' with: [
				spec repository: 'github://pharo-contributions/OrderPreservingDictionary:7b3ab363379e35a3e0e0183b6c2d193a675f898f/src' ].

		spec package: 'XML-Writer-Core' with: [
			spec requires: #('OrderPreservingDictionary') ].
		spec package: 'XML-Writer-Tests' with: [
			spec requires: #('XML-Writer-Core') ].
	]
]
