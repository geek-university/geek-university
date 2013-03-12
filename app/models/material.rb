class Material < ActiveRecord::Base
  belongs_to :section
  belongs_to :content, polymorphic: true
  attr_accessible :name, :position, :section_id, :content
end
