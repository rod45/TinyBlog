"
For the Class part:  ""I represent a header component shared by every TBMScreenComponent"".


"
Class {
	#name : #TBMHeaderComponent,
	#superclass : #WAComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #rendering }
TBMHeaderComponent >> renderBrandOn: html [
	html navigationBarNavigation: [ 
		html navigationBarBrand: self application url ;
		with: 'TinyBlog' ]
]

{ #category : #rendering }
TBMHeaderComponent >> renderContentOn: html [
	html navigationBar beLight; with: [
		html navigationBarBrand: 'Tiny Blog']
		"
   html container: [
   self renderBrandOn: html
   ]]"
]
