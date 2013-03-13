class Material < ActiveRecord::Base
  belongs_to :section
  acts_as_superclass
  attr_accessible :name, :position, :section_id
end
