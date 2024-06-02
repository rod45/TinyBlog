"
Classe abstraite qui contient les comportements communs des composants de TBMApplicationRootComponent
"
Class {
	#name : #TBMScreenComponent,
	#superclass : #WAComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #accessing }
TBMScreenComponent >> blog [

	"Return the current blog. In the future we will ask the
session to return the blog of the currently logged in user."
^ TBMBlog current

]

{ #category : #rendering }
TBMScreenComponent >> renderContentOn: html [
	
	html text: 'Hello from TBMScreenComponent'
]
