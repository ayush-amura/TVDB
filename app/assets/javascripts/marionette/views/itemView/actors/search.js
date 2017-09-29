actorSearch = Marionette.ItemView.extend({
  template: JST['search'],
  events: {
   'keyup #search_name': 'search'
  },

search: function(){
	console.log('Searching')
    $.ajax({
      url: 'actors/search',
      type: 'POST',
      data: {name: $('#search_name').val() },
      dataType: 'json'
    })

    .done(function(response) {
      response.forEach(function(actor) {
        $('#actors').html('<option value ='+ actor.name +' > </option>')
      });
    })
     .fail(function(argument) {
      console.log('fail');
    });
  }
});


// var actorCompositeIndex = Marionette.CompositeView.extend({
//   template: JST['composite_actor_index'],
//   childView: actorIndex,
//   childViewContainer:'tbody'
// });


