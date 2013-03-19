class Quiz
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :body, :answers, :correct_answers, :select_multiple

  validates_presence_of :body, :answers, :correct_answers, :select_multiple

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end