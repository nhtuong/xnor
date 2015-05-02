Meteor.publish 'comments', ->
	Asks.find()

Meteor.publish 'commentsByDoc', (_id) ->
	Asks.find {doc: _id}

Meteor.publish 'commentsByUser', (_id) ->
	Favorites.find {owner: _id}