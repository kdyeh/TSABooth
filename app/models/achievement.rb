class Achievement < ActiveRecord::Base
  attr_accessible :name, :description, :value
  
  has_many :achievement_users
  
  validates_presence_of :name, :value
end
