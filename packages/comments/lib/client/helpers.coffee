Template.registerHelper 'CommentsByDoc', (_id) ->
	if typeof window['Asks'] != 'undefined'
		Asks.find({doc:_id},{sort: {createdAt: -1}}).fetch()

Template.registerHelper 'CommentsByUser', (_id) ->
	if typeof window['Asks'] != 'undefined'
		Asks.find({owner:_id},{sort: {createdAt: -1}}).fetch()

Template.registerHelper 'CommentsByCollection', (collection) ->
	if typeof window['Asks'] != 'undefined'
		Asks = []
		comments = window['Asks'].find({owner: Meteor.userId()},{sort: {createdAt: -1}}).fetch()
		collection = window[collection]

		_.each comments, (favorite)->
			Asks.push(collection.findOne({_id:favorite.doc})) if collection.findOne({_id:favorite.doc})
		Asks


Template.registerHelper 'commentCount', (_id)->
	if typeof window['Asks'] != 'undefined'
		Asks.find({doc:_id}).fetch().length

Template.registerHelper 'commentingOn', (_id)->
	Session.equals 'commentingOn', _id