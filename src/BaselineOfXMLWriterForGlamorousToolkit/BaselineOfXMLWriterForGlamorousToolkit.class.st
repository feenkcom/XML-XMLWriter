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
				spec repository: 'github://pharo-contributions/OrderPreservingDictionary:7803689056b52a9069940c3600bece878bec88c9/src' ].

		spec package: 'XML-Writer-Core' with: [
			spec requires: #('OrderPreservingDictionary') ].
		spec package: 'XML-Writer-Tests' with: [
			spec requires: #('XML-Writer-Core') ].
	]
]
