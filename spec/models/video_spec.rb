require 'rails_helper'

RSpec.describe Video, :type => :model do
  describe 'valid video' do
    
    before(:each) do
      m = Video.new(title: 'video', language: 'hindi',
                      genre: 'action', year_release: 2000, rating: 5, type: 'Video::Movie')
    end  
 	  
 	  describe 'Attributes' do
 	  	it { should validate_presence_of(:title) }
      it { should validate_presence_of(:language) }
      it { should validate_presence_of(:genre) }
      it { should validate_presence_of(:year_release) }
      it { should validate_presence_of(:type) }
     #  it { should validate_presence_of(:rating) }
 	  end

 	  describe 'Associations' do
      it { should have_and_belong_to_many(:actors) }
      it { should have_and_belong_to_many(:viewers) }
    end

  end    
end


# RSpec.describe Video, :type => :model do
#   describe 'invalid video' do
    
#     before(:each) do
#       m = Video.create()
#     end  
 	  
#  	  describe 'Attributes' do
#  	  	it { should validate_absence_of(:title) }
#  	  	it { should validate_absence_of(:language) }
#  	  	it { should validate_absence_of(:year_release) }
#     	it { should validate_absence_of(:genre) }
#     	it { should validate_absence_of(:type) }
#  	  end

 	  
#   end    

# 	describe 'invalid video' do
#   	before(:each) do
#      	m = Video.new(title: nil, language: nil,
#                    genre: nil, year_release: nil, rating: 5, type: nil)
#     end

#     describe 'Attributes' do
#  	  	it { should validate_absence_of(:title) }
#   #     it { should validate_absence_of(:language) }
#   #     it { should validate_absence_of(:genre) }
#   #     it { should validate_absence_of(:year_release) }
#   #     it { should validate_absence_of(:type) }
# 		 end
