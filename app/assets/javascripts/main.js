$( document ).ready(function() {
  var app = new Backbone.Marionette.Application();
  
  new ActorRouter();
  new VideoRouter();
  new WelcomeRouter();

  app.on('start', function() {
    Backbone.Model.prototype.idAttribute = "_id";
  });

  app.start();
  Backbone.history.start({pushState : true});
  console.log('YoBB')
});