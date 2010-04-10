class TaskUser < ActiveRecord::Base
  attr_accessible :task_id, :user_id
  
  belongs_to :task
  belongs_to :user
  
  validates_presence_of :task, :user
  validates_associated :task, :user
end
