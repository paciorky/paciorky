class Asset < ActiveRecord::Base
  attr_accessible :asset

  belongs_to :item
  has_attached_file :asset, :styles => { :large => "615x", :medium => "150x150#", :thumb => "73x" }
end
