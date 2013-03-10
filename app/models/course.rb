class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :logo, :name, :organisation, :published, :short_summary, :start_date

  has_attached_file :logo, :styles => { :thumb => '280x170>'}, :default_url => '/assets/:style/missing.jpg'

  has_many :course_sections

end