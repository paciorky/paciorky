class Page < ActiveRecord::Base
  attr_accessible :title, :content, :slug

  validates :title, :content, :slug, :presence => true

  extend FriendlyId
  friendly_id :slug, use: :slugged
end
