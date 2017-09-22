actorLayoutIndex = Marionette.LayoutView.extend({
	 template: JST['layout_index'],

    regions: {
      summary: '.summary',
      report: '.report'
    },


  onRender: function() {
    this.showChildView('summary',new ActorsCollectionView( { collection: this.collection } ) );
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
