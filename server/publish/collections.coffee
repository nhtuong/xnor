Meteor.publish 'posts', ->
	Courses.find()

Meteor.publish 'attachments', ->
	Attachments.find()
	
Meteor.publish 'xblock', ->
	Xblocks.find()	