"
I represent a post of the blog TinyBlog


"
Class {
	#name : #TBMPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #categories }
TBMPost class >> unclassifiedTag [
	" retourn the Unclassified"
			
	^ 'Unclassified'  
]

{ #category : #action }
TBMPost >> beVisible [ 
	"make thepost visible"	
			
	self visible: true
	
]

{ #category : #accessing }
TBMPost >> category [

	^ category
]

{ #category : #accessing }
TBMPost >> category: aString [

	category := aString
]

{ #category : #accessing }
TBMPost >> date [

	^ date
]

{ #category : #accessing }
TBMPost >> date: aDate [

	date := aDate 
]

{ #category : #initialization }
TBMPost >> initialize [ 
	"initialization method"
			
	super initialize.
   self category: self class unclassifiedTag.
   self date: Date today.
   self notVisible
]

{ #category : #action }
TBMPost >> notVisible [ 
	"make the post not visible"	
			
	self visible: false
	
]

{ #category : #accessing }
TBMPost >> text [

	^ text
]

{ #category : #accessing }
TBMPost >> text: aString [	

		text := aString 
]

{ #category : #accessing }
TBMPost >> title [

	^ title
]

{ #category : #accessing }
TBMPost >> title: aString [

	title := aString 
]

{ #category : #accessing }
TBMPost >> visible [

	^ visible
]

{ #category : #accessing }
TBMPost >> visible: aBoolean [

	visible := aBoolean 
]
