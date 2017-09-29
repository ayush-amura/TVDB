var MyControllerVideo = Marionette.Controller.extend({
  index: function() {
  	console.log('In Video Index function')
  	video = new Video();    
  	video.fetch().done(function() 
    	{
    		// debugger;
			var video_view = new videoItemIndex({model: actor});
			$('body').html(video_view.render().$el);
		}
	)
  },

  new: function(){console.log('In Video new Method')},


  show:function(){console.log('In Video Show Method')},
  edit:function(){console.log('In Video edit Method')},
  
  // delete:function(){console.log('In Video delete Method')}
  });

