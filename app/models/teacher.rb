class Teacher < User
  has_many :course_teachers
  has_many :courses, through: :course_teachers


  # To change this template use File | Settings | File Templates.
end