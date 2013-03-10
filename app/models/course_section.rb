class CourseSection < ActiveRecord::Base
  belongs_to :course
  attr_accessible :date, :name, :course_id
end
