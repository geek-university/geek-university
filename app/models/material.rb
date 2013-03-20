class Material < ActiveRecord::Base
  belongs_to :section
  attr_accessible :name, :position, :section_id, :study_material_type, :data
  serialize :data
end