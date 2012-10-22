class Role < ActiveRecord::Base

  attr_accessible :name

  has_many :users
  has_and_belongs_to_many :permissions

  validates :name, presence: true, uniqueness: true

end
