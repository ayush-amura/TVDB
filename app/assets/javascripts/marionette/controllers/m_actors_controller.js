var MyControllerActor = Marionette.Controller.extend({
  index: function() 
  {
  	 actors = new Actors();    
  	console.log('In Actor Index function');
	actors.fetch().done(function() 
    	{
    		// debugger;
			var actor_view = new actorCompositeIndex({collection: actors});
			$('body').html(actor_view.render().$el);
		}
	)
  },
		  new: function(){
		  	console.log('In Actor new Method')
		  	actors = new Actor();
		    actors.fetch().done(function() 
		    	{
					var actor_view = new actorNew({model : actors});
					$('body').html(actor_view.render().$el);
				}
			)
		  },
		  show:function(){console.log('In Actor Show Method')},
		  edit:function(){console.log('In Actor Edit Method')},
		  // delete:function(){console.log('In Video delete Method')}
});
//==============================================================================
