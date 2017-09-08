class Video 
	#main Video Directory that contains Movies and Tvshows
  include Mongoid::Document
  #assosiations

  field :title, type: String
  field :language, type: String
  field :genre, type: String 
  field :year_release, type: Integer
  field :rating, type: Integer


#   validations of Video fields
  validates :title, presence: true
  validates :language, presence: true
  validates :genre, presence: true
  validates :year_release, presence: true
  validates :rating, presence: true
  # validates :type, presence: true 

  
   # belongs_to :admin,class_name: 'User'
  # # ,->(object){where('type = ? ', 'User::Admin')                       },
                           

   has_and_belongs_to_many :actors, class_name: 'Actor'
  
   has_and_belongs_to_many :viewers,class_name: 'User'
  # ,->(object){where('type = ? ', 'Viewer')                       },
                           

   
end
