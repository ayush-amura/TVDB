
 require "rails_helper"
   RSpec.describe WelcomeController, :type => :controller do
   before(:each) do
    @user = FactoryGirl.create :user
    sign_in @user
  end 
    
  describe 'GET #index' do
    subject { get :index }
    it 'renders the index template' do
      expect(subject).to render_template(:index)
    end
    it 'does not render a different template' do
      expect(subject).to_not render_template(:new)
    end
    
  end

  describe 'GET #Movie_index' do
     subject { get :movie_index }
     it 'renders the index template' do
       expect(subject).to render_template(:movie)
     end
    it 'does not render a different template' do
      expect(subject).to_not render_template(:new)
    end
  end

  describe 'GET #Tvshow_index' do
     subject { get :tvshow_index }
     it 'renders the index template' do
       expect(subject).to render_template(:tvshow)
     end
    it 'does not render a different template' do
      expect(subject).to_not render_template(:new)
    end
  end

   
 end
