$( document ).ready(function() {
  var app = new Backbone.Marionette.Application();
  app.start();
  Backbone.history.start({pushState : true});
  console.log('YoBB')
});