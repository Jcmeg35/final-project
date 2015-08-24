class Rfp < ActiveRecord::Base
  belongs_to :user
  # has_many :bids
  has_one :product
  has_many :specs, :through => :product

  accepts_nested_attributes_for :product, :reject_if => lambda { |a| a[:commodity].blank? }, :allow_destroy => true
end
