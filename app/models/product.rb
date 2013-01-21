class Product < ActiveRecord::Base
  attr_accessible :title,:price, :assets_attributes, :addresses_attributes
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
  has_many :addresses
  #accepts_nested_attributes_for :addresses, :allow_destroy => true

  extend FriendlyId
  friendly_id :title, use: :slugged


end
