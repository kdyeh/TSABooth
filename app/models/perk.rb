class Perk < ActiveRecord::Base
  attr_accessible :name, :description, :cost
  
  has_many :perk_users
  
  validates_presence_of :name, :cost
end
