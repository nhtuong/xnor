@Comments = new Meteor.Collection 'comments'

Schemas.Comments = new SimpleSchema
	doc:
		type:String
		regEx: SimpleSchema.RegEx.Id

	owner:
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	content:
		type: String
		label: 'Ask'


Comments.attachSchema(Schemas.Comments)