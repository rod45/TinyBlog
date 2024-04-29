Class {
	#name : #TBMBlogTest,
	#superclass : #TestCase,
	#instVars : [
		'blog',
		'post',
		'first'
	],
	#category : #'TinyBlog-Tests'
}

{ #category : #initialization }
TBMBlogTest >> setUp [
 blog := TBMBlog current.
 blog removeAllPosts.

 first := TBMPost title: 'A title' text: 'A text'  category: 'First Category' .

 blog writeBlogPost: first. 

 post := (TBMPost  title: 'Another title' text: 'Another text'
category: 'Second Category') beVisible
]

{ #category : #initialization }
TBMBlogTest >> tearDown [  

 TBMBlog reset 
]

{ #category : #initialization }
TBMBlogTest >> testAddBlogPost [
 blog writeBlogPost: post.
 self assert: blog size equals: 2
]
