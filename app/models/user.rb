class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :name, presence: true
  # validates :age, presence: true
  # validates :contact_no, presence: true
  # validates :type, presence: true



  has_and_belongs_to_many :tvshows,->(object){
                            where('type = ? ', 'Tvshow')
                          },
                          class_name: 'Video'
  
	has_and_belongs_to_many :movies,->(object){
                            where('type = ? ', 'Movie')
                          },
                          class_name: 'Video'
	
  has_and_belongs_to_many :actors
  
  # has_many :videos
  
end
