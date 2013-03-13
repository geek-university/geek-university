class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :logo, :name, :organisation, :published, :short_summary, :start_date

  has_attached_file :logo, :styles => { :thumb => '280x170>'}, :default_url => '/assets/:style/missing.jpg'

  #scope :owner?, ->(user) { where(teacher: user) }


  has_many :sections, order: :date, dependent: :destroy


  has_many :course_students
  has_many :course_teachers

  has_many :students, through: :course_students
  has_many :teachers, through: :course_teachers


  def owner?(user)
    teachers.include?(user)
  end

  def subscibe?(user)
    students.include?(user)
  end
end