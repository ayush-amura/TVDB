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
  	actor = new Actor();
    actor.fetch().done(function() 
    	{
			var actor_view = new actorNew({model : actor});
			$('body').html(actor_view.render().$el);
		}
	)
  },
  show:function(id){
  	console.log('In Actor Show Method')
  	actor = new Actor({_id: id });
	actor.fetch().done(function() 
		{
			var actor_view = new actorShow({model: actor})
			$('body').html(actor_view.render().$el);
		});
  },
		  
  edit: function(id){
	console.log('actor#edit');
	actor = new Actor({_id: id });
	actor.fetch().done(function() 
		{
			var actor_view = new actorEdit({model: actor})
			$('body').html(actor_view.render().$el);
		});
  }
		  // delete:function(){console.log('In Video delete Method')}
});
//==============================================================================
