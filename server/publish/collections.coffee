Meteor.publish 'posts', ->
	Courses.find()

Meteor.publish 'attachments', ->
	Attachments.find()