class Item < ActiveRecord::Base
  attr_accessible :name, :description, :price, :assets_attributes, :category_id

  has_many :assets
  belongs_to :category

  accepts_nested_attributes_for :assets, :allow_destroy => true

  validates :name, :description, :price, :category_id, :presence => true

  default_scope :order => "created_at desc"
  scope :latest_8,
        order("created_at DESC").
            limit(8)

  def name_shorten
   self.name.slice(0, 20) + (self.name.length > 20 ? "..." : "")
  end
end
