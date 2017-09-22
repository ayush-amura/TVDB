actorLayoutIndex = Marionette.LayoutView.extend({
	template: JST['layout'],
   regions: {
    summary: '.summary',
    report: '.report'
  },
  
  childEvents: {
    render: function() {
      console.log('A child view has been rendered.');
    }
  },

  onRender: function() {
    this.showChildView('summary', new actorIndex({ model: this.model }));
    this.showChildView('report', new actorIndex({ model: this.model }));
    this.showChildView('summary',new VenuesCollectionView( { collection: this.collection } ) );
  },
  
  onBeforeRender: function() {
     console.log("i am in Pre render function LayoutView")
  },
  onAttach: function() {
   console.log('In attach event for LayoutView');
  },
  onDomRefresh: function() {
     console.log('dom:refresh LayoutView');
  },
  events: {
        "click .do-something": "something:do:it"
      },
  triggers: {
      "click .do-something": "something:do:it"
    }
});

VenueIndexLayout = Marionette.LayoutView.extend({
  template: JST['default'],     
  regions: {
        head: '.head',
    list: '.list'
  },
  onRender: function() {
    this.showChildView('head',new NavBarView() );
    this.showChildView('list',
        new VenuesCollectionView( { collection: this.collection } ) );
  }
});