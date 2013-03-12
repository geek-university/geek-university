class Lecture < ActiveRecord::Base
  has_one :material, as: :content, dependent: :destroy
  attr_accessible :youtube_link
end
