class CourseTeacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacher
  # attr_accessible :title, :body
end
