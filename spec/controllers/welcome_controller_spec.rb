
 require "rails_helper"
   RSpec.describe WelcomeController, :type => :controller do
    
    
  describe 'GET #index' do
    # subject { get :index }
    # it 'renders the index template' do
    #   expect(subject).to render_template(:index)
    # end
    it 'does not render a different template' do
      expect(subject).to_not render_template(:new)
    end
    
  end

  describe 'GET #Movie_index' do
    # subject { get :movie_index }
    # it 'renders the index template' do
    #   expect(subject).to render_template(:movie_index)
    # end
    it 'does not render a different template' do
      expect(subject).to_not render_template(:new)
    end
  end



  # describe "anonymous user" do
  #     before :each do
  #       # This simulates an anonymous user
  #     login_with nil
  #     end
  #     it "should be redirected to signin" do
  #       get :new
  #       expect( response ).to redirect_to( new_user_session_path )
  #     end
  #   end 
 end
