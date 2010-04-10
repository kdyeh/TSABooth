class Task < ActiveRecord::Base
  attr_accessible :name, :description, :value
end
