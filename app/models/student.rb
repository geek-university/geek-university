class Student < User
  has_many :course_students
  has_many :courses, through: :course_students

  # attr_accessible :title, :body
end
