class Achievement < ActiveRecord::Base
  attr_accessible :name, :description, :value
end
