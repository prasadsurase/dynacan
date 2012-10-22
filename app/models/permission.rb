class Permission < ActiveRecord::Base
  attr_accessible :subject_class, :action, :name
end
