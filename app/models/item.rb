class Item < ActiveRecord::Base
  has_many :assets
  belongs_to :category

  attr_accessible :name, :description, :price, :assets_attributes, :category_id
  accepts_nested_attributes_for :assets, :allow_destroy => true

  validates :name, :description, :price, :category_id, :presence => true
  validates_length_of :name, :within => 3..100
  validates_length_of :description, :minimum => 50
  validates_numericality_of :price
  validates_size_of :price, :minimum => 1

  default_scope :order => "created_at desc"
  scope :latest_8,
        order("created_at DESC").
            limit(8)

  def name_shorten
    self.name.slice(0, 20) + (self.name.length > 20 ? "..." : "")
  end
end
