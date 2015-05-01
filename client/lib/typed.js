  $(function(){
        $("#typed").typed({
            strings: ["  The Equality with Technologies for Education  ", "   ETE Personalized e-Training Platform!   "],
            typeSpeed: 50,
            backDelay: 100,
            loop: false,
            contentType: 'html', // or text
            // defaults to false for infinite loop
            loopCount: false,
            callback: function(){ foo(); },
            resetCallback: function() { newTyped(); }
        });

  });
  