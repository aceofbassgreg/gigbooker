class Venue < ActiveRecord::Base
  has_one :address
  has_many :gigs
  has_many :bands, through: :gigs

  attr_accessible :name, :address_attributes

  validates_presence_of :name

  accepts_nested_attributes_for :address

end
