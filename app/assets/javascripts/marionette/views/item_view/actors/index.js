actorIndex = Marionette.ItemView.extend({
	tagName: "tr",
 	template: JST['actor_index'],
  	events: {
    'click #show ' : 'show'
  	},

  show: function(){
    alert('SHOW')
  },
  serializeData: function() {
  	return {
  		'actors' : this.model.attributes
  	}
  },
   // onRender: function() {
   //      alert('renderd')// do stuff after the View is rendered
   //  },

   //  onBeforeRender: function() {
   //      alert('yet to render')// do stuff before the View is rendered
   //  }

  
  // onRender: function() {
  // 	alert('renderd');
  // }
});

VenueItemView = Marionette.ItemView.extend({
  tagName: "tr",
  template: JST['venue'],
  events: {
        'click .edit': 'edit_venue',
        'click .delete': 'delete_venue'         
  },
  edit_venue: function(event) {
    Backbone.history.navigate(`venues/${$(event.currentTarget).data('id')}/edit`,
        {trigger: true, replace: true} );
        },
  delete_venue: function(event){
        var id = $(event.currentTarget).data('id');
  },
  serializeData: function() {
        return {
                'venue' : this.model.attributes
        }
  }
});



