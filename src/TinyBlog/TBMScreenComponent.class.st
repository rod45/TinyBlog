"
Classe abstraite qui contient les comportements communs des composants de TBMApplicationRootComponent
"
Class {
	#name : #TBMScreenComponent,
	#superclass : #SBSComponent,
	#instVars : [
		'header'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #accessing }
TBMScreenComponent >> blog [

	"Return the current blog. In the future we will ask the
session to return the blog of the currently logged in user."
^ TBMBlog current

]

{ #category : #accessing }
TBMScreenComponent >> children [ 

	^ { header }
]

{ #category : #initialization }
TBMScreenComponent >> createHeaderComponent [ 

	^ TBMHeaderComponent new
]

{ #category : #initialization }
TBMScreenComponent >> initialize [ 

	super initialize.
	header := self createHeaderComponent
]

{ #category : #rendering }
TBMScreenComponent >> renderContentOn: html [
	
	html render: header
]
