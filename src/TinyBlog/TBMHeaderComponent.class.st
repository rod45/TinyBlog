"
For the Class part:  ""I represent a header component shared by every TBMScreenComponent"".


"
Class {
	#name : #TBMHeaderComponent,
	#superclass : #SBSComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #rendering }
TBMHeaderComponent >> renderBrandOn: html [
	html navigationBarNavigation: [ 
		html navigationBarBrand url:self application url ;
		with: 'TinyBlog' ]
]

{ #category : #rendering }
TBMHeaderComponent >> renderContentOn: html [
	| bar id|
	id := '#navbarCollapsed'.
	bar := html navigationBar.
	bar beLight; expandLarge.
	bar background beLight.
	bar with: [
		html container: [  self renderBrandOn: html ]
             ]
		
	
]
