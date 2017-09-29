videoController = new MyControllerVideo()
VideoRouter = Mn.AppRouter.extend({
  controller: videoController,
  appRoutes: {
    'videos'           :'index',
    'videos/new'       :'new',
    'videos/:id'       :'show',
    'videos/:id/edit'  :'edit'
    },
   onRoute: function(name, path) {
        console.log("on route called", name, path);
    }
});

