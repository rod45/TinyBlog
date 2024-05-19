Class {
	#name : #TBMApplicationRootComponent,
	#superclass : #WAComponent,
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

{ #category : #rendering }
TBMApplicationRootComponent >> renderContentOn: html [

	html text: 'TinyBlog'

]
