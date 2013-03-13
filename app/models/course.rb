class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :logo, :name,
                  :organisation, :published, :short_summary, :start_date

  has_attached_file :logo, :styles => { :thumb => '280x170>'}, :default_url => '/assets/:style/missing.jpg'

  #scope :owner?, ->(user) { where(teacher: user) }


  has_many :sections, order: :date, dependent: :destroy


  has_many :course_users

  has_many :users, through: :course_users


  def subscibe?(user)
    course_users.where(user_id: user.id).count >= 1
  end
end