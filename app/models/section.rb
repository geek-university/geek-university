class Section < ActiveRecord::Base
  belongs_to :course
  has_many :materials, order: :position
  attr_accessible :date, :name, :course_id
end
