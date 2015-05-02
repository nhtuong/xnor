@AdminConfig =
	name: Config.name
	collections : 
		Courses: {
			color: 'red'
			icon: 'pencil'
			auxCollections: ['Attachments']
			tableColumns: [
              {label: 'Title',name:'title'}
              {label: 'Organization';name:'organization'}
              {label: 'Video';name:'video'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
		Asks: {
			color: 'green'
			icon: 'comments'
			auxCollections: ['Courses']
			tableColumns: [
              {label: 'Content';name:'content'}

              {label:'Course';name:'doc',collection: 'Courses',collection_property:'title'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
	dashboard:
		homeUrl: '/dashboard'
		# widgets: [
		# 	{
		# 		template: 'adminCollectionWidget'
		# 		data:
		# 			collection: 'Courses'
		# 			class: 'col-lg-3 col-xs-6'
		# 	}
		# 	{
		# 		template: 'adminUserWidget'
		# 		data:
		# 			class: 'col-lg-3 col-xs-6'
		# 	}
		# ]
	autoForm: 
	        omitFields: ['createdAt', 'updatedAt']
