class Item < ActiveRecord::Base
  attr_accessible :name, :description, :price, :assets_attributes, :category_id

  has_many :assets
  belongs_to :category

  accepts_nested_attributes_for :assets, :allow_destroy => true

  #extend FriendlyId
  #friendly_id :name, use: :slugged

  validates :name, :description, :price, :presence => true
end
