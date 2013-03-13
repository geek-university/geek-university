class CourseStudent < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  validates :course_id, uniqueness: {scope: :student_id}
  # attr_accessible :title, :body
end
