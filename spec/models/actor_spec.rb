require 'rails_helper'

RSpec.describe Actor, :type => :model do
  describe 'valid actor' do
    
    before(:each) do
      m = Actor.new(name:'ayush', age:25,
                      rating:9)
    end  
 	  
 	  describe 'Attributes' do
 	  	it { should validate_presence_of(:name) }
      it { should validate_presence_of(:age) }
      it { should validate_presence_of(:rating) }
      
      
     #  it { should validate_presence_of(:rating) }
 	  end

 	  describe 'Associations' do
      it { should have_and_belong_to_many(:tvshows) }
      it { should have_and_belong_to_many(:movies) }
      it { should have_and_belong_to_many(:viewers) }
    end

  end    

  # describe 'invalid actor' do
    
  #   before(:each) do
  #     m = Actor.new(name:'', age:nil,
  #                     rating:nil)
  #   end  
    
  #   describe 'Attributes' do
  #     it { should validate_absence_of(:name) }
  #     it { should validate_absence_of(:age) }
  #     it { should validate_absence_of(:rating) }
      
      
  #    #  it { should validate_presence_of(:rating) }
  #   end

  #   # describe 'Associations' do
  #   #   it { should have_and_belong_to_many(:tvshows) }
  #   #   it { should have_and_belong_to_many(:movies) }
  #   #   it { should have_and_belong_to_many(:viewers) }
  #   # end

  # end    

end

