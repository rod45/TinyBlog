"
I represent a post collection
"
Class {
	#name : #TBMBlog,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#category : #TinyBlog
}

{ #category : #initialization }
TBMBlog class >> createDemoPosts [

	"TBBlog createDemoPosts"

	

	self current
		writeBlogPost: ((TBMPost
				  title: 'Welcome in TinyBlog'
				  text: 'TinyBlog is a small blog engine made with Pharo.'
				  category: 'TinyBlog') visible: true);
		writeBlogPost: ((TBMPost
				  title: 'Report Pharo Sprint'
				  text:
					  'Friday, June 12 there was a Pharo sprint / Moose dojo. It was a nice event with more than 15 motivated sprinters. With the help of candies, cakes and chocolate, huge work has been done'
				  category: 'Pharo') visible: true);
		writeBlogPost: ((TBMPost
				  title: 'Brick on top of Bloc - Preview'
				  text: 'We are happy to announce the first preview version of Brick, a new widget set created from scratch on top of Bloc. Brick is being developed primarily by Alex Syrel (together with Alain Plantec, Andrei Chis and myself), and the work is sponsored by ESUG. Brick is part of the Glamorous Toolkit effort and will provide the basis for the new versions of the development tools.'
				  category: 'Pharo') visible: true);
		writeBlogPost: ((TBMPost
				  title: 'The sad story of unclassified blog posts'
				  text: 'So sad that I can read this.') visible: true);
		writeBlogPost: ((TBMPost
				  title: 'Working with Pharo on the Raspberry Pi'
				  text: 'Hardware is getting cheaper and many new small devices like the famous Raspberry Pi provide new computation power that was one once only available on regular desktop computers.'
				  category: 'Pharo') visible: true)
]

{ #category : #initialization }
TBMBlog class >> current [ 
	"Answer thr instance of the class"
	"scope: class-variables  &  class-instance-variables"	
			
	^ self selectAll
ifNotEmpty: [ :x | x anyOne ]
ifEmpty: [ self new save ]

]

{ #category : #initialization }
TBMBlog class >> initialize [ 
	self reset 
]

{ #category : #testing }
TBMBlog class >> initializeVoyageOnMemoryDB [

	VOMemoryRepository new enableSingleton


]

{ #category : #testing }
TBMBlog class >> isVoyageRoot [

	"Indicates that instances of this class are top level documents
in noSQL databases"
^ true

]

{ #category : #testing }
TBMBlog class >> reset [
self initializeVoyageOnMemoryDB

]

{ #category : #'as yet unclassified' }
TBMBlog >> AllVisibleBlogPosts [
	^ posts select: [ :p | p isVisible  ]
	
]

{ #category : #actions }
TBMBlog >> allBlogPosts [
	^ posts  
]

{ #category : #'as yet unclassified' }
TBMBlog >> allBlogPostsFromCategory: aCategory [
	^ posts select: [ :p | p category = aCategory ]

]

{ #category : #private }
TBMBlog >> allCategories [
^(self allBlogPosts collect: [ :p | p category ] ) asSet 
]

{ #category : #'as yet unclassified' }
TBMBlog >> allVisibleBlogPostsFromCategory: aCategory [ 
	^ posts select: [ :p | p category = aCategory
and: [ p isVisible ] ]
]

{ #category : #initialization }
TBMBlog >> initialize [ 
	"initialiaze a blog"
	
	super initialize. 		
	posts := OrderedCollection new.
]

{ #category : #action }
TBMBlog >> removeAllPosts [
	posts := OrderedCollection new.
	self save  
	
]

{ #category : #accessing }
TBMBlog >> size [ 
 ^ posts size 
]

{ #category : #actions }
TBMBlog >> writeBlogPost: aTBMPost [ 
	"Write the blog post in database"
	self allBlogPosts add: aTBMPost.
	self save

]
