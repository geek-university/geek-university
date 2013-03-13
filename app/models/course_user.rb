class CourseUser < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  validates :course_id, uniqueness: {scope: [:user_id],
                                     message: 'ASDASDASDASDASDSA'}

  attr_accessible :material_id, :last_viewed


end
