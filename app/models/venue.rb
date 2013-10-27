class Venue < ActiveRecord::Base
  has_one :address
  has_many :gigs
  has_many :bands, through: :gigs

  accepts_nested_attributes_for :address

  attr_accessible :name, :address_attributes, :address_id

  validates_presence_of :name

  

end
