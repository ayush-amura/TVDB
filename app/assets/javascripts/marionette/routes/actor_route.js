actorController = new MyControllerActor()
ActorRouter = Mn.AppRouter.extend({
  controller: actorController,
  appRoutes: {
    'actors'            :'index',
    'actors/new'        :'new',
    'actors/:id'        :'show',
    'actors/:id/edit'   :'edit'
    }
  // onRoute: function(name, path, args) {
  //   console.log('**********************User navigated to ' + path +'*************************');
  // }
});
new ActorRouter()