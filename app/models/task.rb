class Task < ActiveRecord::Base
  attr_accessible :name, :description, :value
  
  has_many :task_users
  
  validates_presence_of :name, :value
  
end
