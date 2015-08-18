class Rfp < ActiveRecord::Base
  belongs_to :users
  has_many :bids
  belongs_to :products
end
