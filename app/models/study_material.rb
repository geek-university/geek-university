class StudyMaterial < ActiveRecord::Base
  belongs_to :course_section
  attr_accessible :data, :name, :order
end
