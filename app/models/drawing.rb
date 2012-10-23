class Drawing < ActiveRecord::Base
  attr_accessible :sheet_number, :part_id
  belongs_to :part
end
