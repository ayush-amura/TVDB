actorShow = Marionette.ItemView.extend({
	
 	template: JST['item_actor_show'],
  
  events: {
    'click .edit': 'edit_actor',
    'click .delete': 'delete_actor'
  },


  edit_actor: function(event) {
    var id = $(event.currentTarget).data('id');
    Backbone.history.navigate('actors/' + id + '/edit', {trigger: true} );
  },

  delete_actor: function(event){
    this.model.destroy({success: function(response) {
      Backbone.history.navigate('actors', {trigger: true} );
    }});
  }
});

//=============================================================
 // events: {
  //   'click #show ' : 'show'
  // },

  // show: function(){
  //   alert('SHOW')
  // },
// onRender: function() {
   //      alert('renderd')// do stuff after the View is rendered
   //  },

   //  onBeforeRender: function() {
   //      alert('yet to render')// do stuff before the View is rendered
   //  }

  
  // onRender: function() {
  //  alert('renderd');
  // }