class Asset < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :product
  has_attached_file :image, :styles => {:medium => "640x480>", :thumb => "100x100>"}
  attr_accessible :image


end
