@Courses = new Meteor.Collection('posts');

Schemas.Courses = new SimpleSchema
	title:
		type:String
		label: 'Title'
		max: 60
		
	organization:
		type:String
		label: 'Organization'
		max: 60		

	content:
		type: String
		label: 'Description'
		autoform:
			rows: 5
			
	video:
		type: String
		label: 'Video (Youtube ID, i.e. eW3gMGqcZQc)'
		max: 60
		
	widget:
		type: String
		label: 'Widget'
		autoform:
			rows: 3
		
	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	picture:
		type: String
		autoform:
			afFieldInput:
				type: 'fileUpload'
				collection: 'Attachments'

	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Courses.attachSchema(Schemas.Courses)