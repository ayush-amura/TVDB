Video = Backbone.Model.extend({	
	urlRoot: '/videos/',
}) 

Videos = Backbone.Collection.extend({
	model: Video, 
	url: '/videos'
})
// var v1= new Videos()
// console.log(v1.fetch())
