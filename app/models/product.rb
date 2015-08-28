class Product < ActiveRecord::Base
  has_many :rfps
  has_many :specs


  accepts_nested_attributes_for :specs, :reject_if => lambda { |a| a[:value].blank? }, :allow_destroy => true
end
