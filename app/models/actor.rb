class Actor 
	include Mongoid::Document
	
	field :name, type: String
  field :age, type: Integer
  field :rating, type: Integer 
	#associations
	#checking type condition for Movies
	has_and_belongs_to_many :movies,class_name: 'Video'
	# ,->(object){where('type = ?', 'Video::Movie')},
	# 												

	# #Checking type condition for Tvshow
	has_and_belongs_to_many :tvshows,class_name: 'Video'
	# ,->(object){where('type = ?', 'Video::TvShow')},
	# 											  
	# #Checking Viewer from User
	has_and_belongs_to_many :viewers,class_name: 'User'
	# ->(object){where('type = ? ', 'User::Viewer')},
	 											   

	
	#validations
	validates :name, presence: true  
  validates :age, presence: true
  validates :rating, presence: true

end
