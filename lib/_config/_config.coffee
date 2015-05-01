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
			url: 'https://www.facebook.com/pages/Xnor/551086105032381'
			icon: 'facebook'
		twitter:
			url: 'https://twitter.com/ETE_Xnor'
			icon: 'twitter'
		github:
			url: 'https://github.com/nhtuong/xnor'
			icon: 'github'
		info:
			url: 'http://ete-edu.com/'
			icon: 'link'

	publicRoutes: ['home']