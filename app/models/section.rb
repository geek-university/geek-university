class Section < ActiveRecord::Base
  belongs_to :course
  has_many :materials, order: :position, dependent: :destroy
  attr_accessible :date, :name, :course_id

  validates :name, :course_id, presence: true
end
