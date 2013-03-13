class CourseTeacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacher

  validates :course_id, uniqueness: {scope: :teacher_id,
                                     message: 'ASDASDASDASDASDSA'}
  # attr_accessible :title, :body
end
