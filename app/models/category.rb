class Category < ActiveRecord::Base
  attr_accessible :name, :cover_id

  has_many :products, :order => "created_at desc"
  belongs_to :cover, :class_name => 'Product'

  validates :name, :presence => true

  scope :ordered_by_items,
        select("categories.*, count(products.id) AS items_count").
            joins(:products).
            group("categories.id").
            order("items_count DESC, created_at DESC")


end
