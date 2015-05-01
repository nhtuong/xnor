Template.home.rendered = () ->
	w = new WOW().init()
	
	# make sure div stays full width/height on resize
	# global vars
	winWidth = $(window).width()
	winHeight = $(window).height()

	# set initial div height / width
	$("#intro").css
	  width: winWidth
	  height: winHeight

	$(window).resize ->
	  $("#intro").css
	    width: $(window).width()
	    height: $(window).height()

	
	# s = new skrollr.init({smoothScrolling: true})
	# s.refresh()

	if  (/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent or navigator.vendor or window.opera)
		$('#intro').addClass('mobile')
	else
		options =
			forceHeight: false
			smoothScrolling: false

		skrollr.init(options).refresh()


	$( document ).ready ->
		# alert 'ready'
		$('#loading-overlay').fadeOut 800




		

$ ->
  $('#typed').typed
    strings: [
      '  The Equality with Technologies for Education  '
      '   ETE Personalized e-Training Platform!   '
    ]
    typeSpeed: 50
    backDelay: 100
    loop: false
    contentType: 'html'
    loopCount: false
    callback: ->
      foo()
      return
    resetCallback: ->
      newTyped()
      return
  return

# ---


