class Order < ActiveRecord::Base
  belongs_to :item

  attr_accessible :first_name, :last_name, :city, :email, :phone, :comments, :item_id

  validates :first_name, :last_name, :city, :email, :phone, :item, :presence => true
  validates_format_of :phone, :with => /^\+?[0-9\-\(\) ]*$/, :on => :create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  state_machine :initial => :new do
    event :deliver do
      transition :new => :delivered
    end
    event :cancel do
      transition :new => :canceled
    end
  end

  def client_name
    "#{first_name} #{last_name}"
  end
end
