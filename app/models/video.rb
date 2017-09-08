
class Video 
	#main Video Directory that contains Movies and Tvshows
  include Mongoid::Document
  #assosiations

  field :title, type: String
  field :language, type: String
  field :genre, type: String 
  field :year_release, type: Integer
  field :rating, type: Integer
  field :type, type: String
  
  # belongs_to :admin,->(object){
  #                           where('type = ? ', 'User::Admin')
  #                         },
  #                         class_name: 'User' 

  # has_and_belongs_to_many :actors, class_name: 'Actor'
  
  # has_and_belongs_to_many :viewers,->(object){
  #                           where('type = ? ', 'Viewer')
  #                         },
  #                         class_name: 'User' 

   
	#validations of Video fields
	# validates :title, presence: true
 #  validates :language, presence: true
 #  validates :genre, presence: true
 #  validates :year_release, presence: true
 #  validates :rating, presence: true
 #  validates :type, presence: true
   
end
