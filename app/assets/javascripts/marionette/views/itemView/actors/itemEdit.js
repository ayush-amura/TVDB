actorEdit = Marionette.ItemView.extend({
	
 	template: JST['item_actor_edit'],
 	
 	events: {
    'click .edit': 'edited_actor_submit',
  	},
  
  edited_actor_submit: function() {
  	console.log('Edit actor function');
     this.model.set({name: $('#name').val(),
                     age: $('#age').val(),
                     rating: $('#rating').val(),
                   });
    this.model.save().done(function(){
      console.log('saved');
    });

    Backbone.history.navigate('actors', {trigger: true} );
  }

});

