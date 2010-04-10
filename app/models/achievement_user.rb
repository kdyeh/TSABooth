class AchievementUser < ActiveRecord::Base
  attr_accessible :achievement_id, :user_id
  
  belongs_to :achievement
  belongs_to :user
  
  validate_presence_of :achievement_id, :user_id
  validates_associated :achievement, :user
end
