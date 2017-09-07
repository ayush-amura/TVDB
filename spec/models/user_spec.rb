require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'valid user' do
    
    before(:each) do
      m = User.new(name: 'raman', age: 25,
                      contact_no: 987987, type: 'User')
    end  
 	  
 	  describe 'Attributes' do
 	  	it { should validate_presence_of(:name) }
      it { should validate_presence_of(:age) }
      it { should validate_presence_of(:contact_no) }
      it { should validate_presence_of(:type) }
      
     #  it { should validate_presence_of(:rating) }
 	  end

 	  describe 'Associations' do
      it { should have_and_belong_to_many(:tvshows) }
      it { should have_and_belong_to_many(:movies) }
      it { should have_and_belong_to_many(:actors) }
    end

  end    
end

