actorLayoutIndex = Marionette.LayoutView.extend({
	 template: JST['layout_actor_index'],

    regions: {
      search: '.search',
      table: '.table'
    },
  onRender: function() {
    console.log('Layout_index') 
    this.showChildView('search',new actorSearch({collection: this.collection}));
    this.showChildView('table',new actorCompositeIndex({collection: this.collection}));
    // this.showChildView('search',new actorCompositeIndex({collection: this.collection}));
  }
 });
//==============================================================================
  //  childEvents: {
  //   render: function() {
  //     console.log('A child view has been rendered.');
  //   }
  // },

  // onBeforeRender: function() {
  //    console.log("i am in Pre render function LayoutView")
  // },
  // onAttach: function() {
  //  console.log('In attach event for LayoutView');
  // },
  // onDomRefresh: function() {
  //    console.log('dom:refresh LayoutView');
  // },
  // events: {
  //       "click .do-something": "something:do:it"
  //     },
  // triggers: {
  //     "click .do-something": "something:do:it"
