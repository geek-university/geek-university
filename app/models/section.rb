class Section < ActiveRecord::Base
  belongs_to :course
  has_many :materials
  attr_accessible :date, :name, :course_id
end
