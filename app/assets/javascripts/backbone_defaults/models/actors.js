Actor =Backbone.Model.extend({
 initialize: function(){ this.on('change',this.someChange,this)},
 someChange: function(model,options){
    alert("something has changed");
 },
 defaults : {
     			name : 'untitled',
     			age : 22,
     			rating : 8,
      		},
 url:  function(){
    return "/actors/"
  }
});
Actors = Backbone.Collection.extend({
	model: Actor, 
	url: '/actors/'

})
// a1=new Actor({name : "name changed"})
// console.log(a1.fetch())


