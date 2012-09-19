class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :body, :nickname

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => /[^@]+@[^\.]+\.[\w\.\-]+/ }

  validates :nickname, :length => { :is => 0 }

  def initialize(attributes = { })
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end