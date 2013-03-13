class Lecture < ActiveRecord::Base
  acts_as :material
  attr_accessible :youtube_link
end
