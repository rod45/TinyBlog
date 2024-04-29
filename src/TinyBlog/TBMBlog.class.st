"
I represent a post collection
"
Class {
	#name : #TBMBlog,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #TinyBlog
}

{ #category : #initialization }
TBMBlog class >> current [ 
	"Answer thr instance of the class"
	"scope: class-variables  &  class-instance-variables"	
			
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #initialization }
TBMBlog class >> initialize [ 
	self reset 
]

{ #category : #initialization }
TBMBlog class >> reset [
	"reset"
	uniqueInstance := nil
]

{ #category : #initialization }
TBMBlog >> initialize [ 
	"initialiaze a blog"
	
	super initialize. 		
	posts := OrderedCollection new.
]

{ #category : #action }
TBMBlog >> removeAllPosts [
	posts := OrderedCollection new 
]

{ #category : #accessing }
TBMBlog >> size [ 
 ^ posts size 
]

{ #category : #actions }
TBMBlog >> writeBlogPost: aTBMPost [ 
	"Add the blog post to the list of posts."
    posts add: aTBMPost
]
