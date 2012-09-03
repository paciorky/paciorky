class Category < ActiveRecord::Base
  attr_accessible :name, :cover_id

  has_many :items
  belongs_to :cover, :class_name => 'Item'
end
