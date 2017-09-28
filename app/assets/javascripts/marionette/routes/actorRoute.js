actorController = new MyControllerActor()
ActorRouter = Mn.AppRouter.extend({
  controller: actorController,
  appRoutes: {
    'actors'            :'index',
    'actors/new'        :'new',
    'actors/:id'        :'show',
    'actors/:id/edit'   :'edit'
    },
    onRoute: function(name, path) {
        // this route is being called. This works
        console.log("on route called", name, path);
    }
});
