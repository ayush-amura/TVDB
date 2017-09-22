actorIndex = Marionette.ItemView.extend({
	
 	template: JST['item_actor_index'],
  
  serializeData: function() {
  	return {
  		'a' : this.model.attributes
  	}
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