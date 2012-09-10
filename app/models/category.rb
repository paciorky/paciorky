class Category < ActiveRecord::Base
  attr_accessible :name, :cover_id

  has_many :items, :order => "created_at desc"
  belongs_to :cover, :class_name => 'Item'

  validates :name, :cover_id, :presence => true

  scope :ordered_by_items,
        select("categories.*, count(items.id) AS items_count").
            joins(:items).
            group("categories.id").
            order("items_count DESC, created_at DESC")


end
