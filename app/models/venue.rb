class Venue < ActiveRecord::Base
  has_one :address
  has_one :user
  has_many :gigs
  has_many :bands, through: :gigs

  accepts_nested_attributes_for :address

  validates_presence_of :name

  

end
