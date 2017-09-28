var myController = new MyControllerWelcome()
WelcomeRouter = Mn.AppRouter.extend({
  controller: myController,
  appRoutes: {
    'welcome/movie_index'       :'movie_index',
    'welcome/tvshow_index'      :'tvshow_index',
   },
  // onRoute: function(name, path, args) {
  //   console.log('**********************User navigated to ' + path +'*************************');
  // }
});
