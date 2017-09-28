var actorCompositeIndex = Marionette.CompositeView.extend({
  template: JST['composite_actor_index'],
  childView: actorIndex,
  childViewContainer: 'tbody'
});


			