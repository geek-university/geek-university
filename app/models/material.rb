class Material < ActiveRecord::Base
  belongs_to :section
  attr_accessible :data, :name, :position, :section_id
end
