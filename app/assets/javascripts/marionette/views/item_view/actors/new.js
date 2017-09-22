actorNew = Marionette.ItemView.extend({
	template: JST['actor_new'],
  
  serializeData: function() {
  	return {
  		'actors' : this.model.attributes
  	}
  },
  onRender: function() {
  	alert('renderdNew');
  }
});


