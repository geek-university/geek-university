class Document < ActiveRecord::Base
  has_one :material, as: content, dependent: :destroy
  attr_accessible :body
end
