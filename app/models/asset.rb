class Asset < ActiveRecord::Base
  attr_accessible :asset

  belongs_to :item
  has_attached_file :asset, :styles => { :large => "600x", :medium => "160x160#", :thumb => "75x" }
end
