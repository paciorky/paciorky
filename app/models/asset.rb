class Asset < ActiveRecord::Base
  attr_accessible :asset

  belongs_to :item
  has_attached_file :asset, :styles => { :large => "600x", :medium => "158x158#", :thumb => "73x" }
end
