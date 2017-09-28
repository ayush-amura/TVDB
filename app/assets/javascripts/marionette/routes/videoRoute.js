var myController = new MyControllerVideo()
VideoRouter = Mn.AppRouter.extend({
  controller: myController,
  appRoutes: {
    'videos'           :'index',
    'videos/new'       :'new',
    'videos/:id'        :'show',
     },
  // onRoute: function(name, path, args) {
  //   console.log('**********************User navigated to ' + path +'*************************');
  // }
});
