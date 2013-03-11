class CourseSection < ActiveRecord::Base
  belongs_to :course
  has_many :study_materials
  attr_accessible :date, :name, :course_id
end
