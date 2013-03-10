class CourseStudent < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  # attr_accessible :title, :body
end
