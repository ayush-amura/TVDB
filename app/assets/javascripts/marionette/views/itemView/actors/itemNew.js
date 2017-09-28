actorNew = Marionette.ItemView.extend({
	
 	template: JST['item_actor_new'],
    
  events: {
    'click .save': 'new_actor_submit',
  },
  
  new_actor_submit: function() {
    console.log('New actor function')
    this.model.set(
        {
          name: $('#name').val(),
          age: $('#age').val(),
          rating: $('#rating').val(),
        });
    this.model.save()
    Backbone.history.navigate('actors', {trigger: true} );
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