
 require "rails_helper"
   RSpec.describe VideosController, :type => :controller do
    
    
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
    subject(:video) { Video.new }
    it 'is a new video' do
      expect(video).to be_a_new(Video)
    end
    it 'is not a new string' do
      expect(video).not_to be_a_new(String)
    end
  end
  
  context 'when saved' do
    subject(:video) { Video.create(title:'a',language:'hindi', genre:'a',year_release:2000,type:'Video::Movie',rating:9) }
    it 'is not a new video' do
      expect(video).not_to be_a_new(Video)
    end
    it 'is not a new string' do
      expect(video).not_to be_a_new(String)
    end
  end

 	describe '#create1' do
    subject { post :create, params: {video: {title:'a',language:'hindi', genre:'a',year_release:2000,type:'Video::Movie',rating:9} } }
    it 'redirects to videos_url' do
      expect(subject).to redirect_to video_url(id: Video.last.id)
    end
  end

  describe '#invalid create' do
    subject { post :create,params: {video: {language:'hindi', genre:'a',year_release:2000,type:'Video::Movie',rating:9} } }
    it 'doesn\'t redirects to videos_url' do
      expect(subject).to_not redirect_to video_url(id: Video.last.id)
    end
  end

 describe '#destroy' do
    subject { delete :destroy, params: { id: 37 } }
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
    it 'Creates an instance of Video ' do
        @video = Video.new
        expect(@video).to be_an_instance_of Video
    end
  end

 #  #  describe '#edit' do 
 #  #   subject { patch :update, params:{ venue: { name: 'Foo', age: 20,rating: 9 }, id: 7 } }
 #  #   it 'redirects to actors_url' do
 #  #     expect(subject).to redirect_to actors_path
 #  #   end
 #  # end


 end
