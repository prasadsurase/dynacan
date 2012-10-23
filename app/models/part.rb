class Part < ActiveRecord::Base
  attr_accessible :name
  has_many :drawings
  has_many :plans
end
