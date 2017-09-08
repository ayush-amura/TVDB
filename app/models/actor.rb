class Actor 
	include Mongoid::Document
	
	field :name, type: String
  field :age, type: Integer
  field :rating, type: Integer 
	#associations
	#checking type condition for Movies
	# has_and_belongs_to_many :movies,->(object){
	# 													where('type = ?', 'Video::Movie')
	# 												},
	# 												class_name: 'Video'

	# #Checking type condition for Tvshow
	# has_and_belongs_to_many :tvshows,->(object){
	# 													where('type = ?', 'Video::TvShow')
	# 												},
	# 											  class_name: 'Video'
	# #Checking Viewer from User
	# has_and_belongs_to_many :viewers,->(object){
	# 													where('type = ? ', 'User::Viewer')
	# 												},
	# 											  class_name: 'User' 

	
	#validations
	validates :name, presence: true  
  validates :age, presence: true
  validates :rating, presence: true

end
