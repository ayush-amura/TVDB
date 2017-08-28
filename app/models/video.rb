class Video < ApplicationRecord
  #main Video Directory that contains Movies and Tvshows
  
  #assosiations
  # has_many :casts
	# has_many :actors
	belongs_to :admin
  has_and_belongs_to_many :actors, class_name: 'Actor'
  has_and_belongs_to_many :viewers,->(object){
                            where('type = ? ', 'Viewer')
                          },
                          class_name: 'User' 

   
	#validations of Video fields
	validates :title, presence: true
  validates :language, presence: true
  validates :genre, presence: true
  validates :year_release, presence: true
  validates :rating, presence: true
  validates :type, presence: true
   
end
