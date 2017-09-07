
 require "rails_helper"
   RSpec.describe ActorsController, :type => :controller do
    
    
  describe 'GET #index' do
    subject { get :index }
    it 'renders the index template' do
      expect(subject).to render_template(:index)
    end
    it 'does not render a different template' do
      expect(subject).to_not render_template(:new)
    end
    it "responds successfully with an HTTP 200 status code" do
       get :index
       expect(response).to be_success
       expect(response).to have_http_status(200)
     end
  end

  context 'when initialized' do
    subject(:actor) { Actor.new }
    it 'is a new actor' do
      expect(actor).to be_a_new(Actor)
    end
    it 'is not a new string' do
      expect(actor).not_to be_a_new(String)
    end
  end
  
  context 'when saved' do
    subject(:actor) { Actor.create(name:'a',age: 22,rating: 7) }
    it 'is not a new actor' do
      expect(actor).not_to be_a_new(Actor)
    end
    it 'is not a new string' do
      expect(actor).not_to be_a_new(String)
    end
  end

 	describe '#create1' do
    subject { post :create, params: { actor: { name: 'F' , age: 20,rating:8 } } }
    it 'redirects to actors_url' do
      expect(subject).to redirect_to actor_url(id: Actor.last.id)
    end
  end


  describe '#new' do
    subject { post :new }
    it 'redirects to actors_url' do
      expect(subject).to render_template(:new)
    end
  end


  describe '#invalid create' do
    subject { post :create,params: { actor: { name: 'F' ,rating:8 } } }
    it 'doesn\'t redirects to actors_url' do
      expect(subject).to_not redirect_to actor_url(id: Actor.last.id)
    end
  end

 describe '#destroy' do
    subject { delete :destroy, params: { id: 7 } }
    it 'should return status 302' do
      expect(subject).to redirect_to action: :index
    end
  end

  	describe '#invalid destroy' do
    subject { delete :destroy, params: { id: nil } }
    it 'should not return status 302' do
      expect(response.status).to_not be(302)
    end
  end

  describe '#new' do
    it 'Creates an instance of Actor ' do
        @actor = Actor.new
        expect(@actor).to be_an_instance_of Actor
    end
  end

#   describe '#edit' do
#     params = { actor: { name: 'F' ,age:22,rating:8 } }, id: 7 }
#     subject { patch :update, params: params }

#     it 'redirects to actors_url' do
#       expect(subject).to redirect_to action: :index
#     end
#   end

#   describe '#invalid edit' do
#     params = {actor: { name: 'Foo' },id: 7}
#     subject { patch :update, params: params }

#     it 'redirects to venues_url' do
#       expect(subject).to render_template(:edit)
#     end
#   end


  # describe '#edit' do
  #   subject { patch :update, params: {actor: { name: 'F' , age: 20,rating:8 } } }
  #   it 'redirects to actors_url' do
  #     expect(subject).to redirect_to edit_actor_path
  #   end
  # end

 end
