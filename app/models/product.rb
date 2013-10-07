class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :images_attributes, :category_id

  has_many :images, :as => :attachable
  belongs_to :category

  accepts_nested_attributes_for :images, :allow_destroy => true

  validates :name, :description, :price, :images, :presence => true
  validates_length_of :name, :within => 3..100
  validates_length_of :description, :minimum => 10
  validates_numericality_of :price
  validates_size_of :price, :minimum => 1

  scope :latest_8, order("created_at DESC").limit(8)

  def cover_image_url(size = :thumb)
    if images.present?
      images.first.image.url(size)
    else
      "http://placekitten.com/73/73"
    end
  end
end
