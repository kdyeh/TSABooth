class PerkUser < ActiveRecord::Base
  attr_accessible :perk_id, :user_id
  
  belongs_to :perk
  belongs_to :user
  
  validates_presence_of :perk, :user
  validates_associated :perk, :user
end
