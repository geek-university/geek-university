class Document < ActiveRecord::Base
  acts_as :material
  attr_accessible :body
end
