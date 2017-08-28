class User < ApplicationRecord
	
	#Validation for User Details
  validates :name, presence: true
  validates :age, presence: true
  validates :contact_no, presence: true
  validates :type, presence: true
  validates :email, length: { maximum: 100 }

  has_and_belongs_to_many :tvshows,->(object){
                            where('type = ? ', 'Tvshow')
                          },
                          class_name: 'Video'
  
	has_and_belongs_to_many :movies,->(object){
                            where('type = ? ', 'Movie')
                          },
                          class_name: 'Video'
	has_and_belongs_to_many :actors
 
  #                   format: EMAIL_REGEX
  
end
