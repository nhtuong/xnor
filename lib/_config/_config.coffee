@Config =
	name: 'ETE :: Xnor'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			TAPi18n.__ 'configSubtitle'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	blog: '#'
	about: '#'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'

	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	socialMedia:
		facebook:
			url: '#'
			icon: 'facebook'
		twitter:
			url: '#'
			icon: 'twitter'
		github:
			url: '#'
			icon: 'github'
		info:
			url: 'http://ete-edu.com/'
			icon: 'link'

	publicRoutes: ['home']