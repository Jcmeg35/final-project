class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, uniqueness: true, presence: true
  validates :last_name, uniqueness: true, presence: true
  validates :first_name, uniqueness: true, presence: true
  validates :market_interest, presence: true
  validates :title, presence: true



  has_many :rfps
  has_many :bids
end
