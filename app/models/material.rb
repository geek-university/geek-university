class Material < ActiveRecord::Base
  belongs_to :section
  attr_accessible :data, :name, :order, :section_id
end
