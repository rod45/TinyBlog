Class {
	#name : #TBMApplicationRootComponent,
	#superclass : #SBSComponent,
	#instVars : [
		'main'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #testing }
TBMApplicationRootComponent class >> canBeRoot [
	^ true
]

{ #category : #initialization }
TBMApplicationRootComponent class >> initialize [ 
	
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'TinyBlog'.
app
	addLibrary: JQDeploymentLibrary;
	addLibrary: JQUiDeploymentLibrary;
	addLibrary: SBSDeploymentLibrary
]

{ #category : #accessing }
TBMApplicationRootComponent >> children [ 
	^ {  main} 
]

{ #category : #initialization }
TBMApplicationRootComponent >> initialize [ 
	super initialize.
	main := TBMScreenComponent new  
]

{ #category : #rendering }
TBMApplicationRootComponent >> renderContentOn: html [

	html render: main 

]

{ #category : #updating }
TBMApplicationRootComponent >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'TinyBlog'
]
