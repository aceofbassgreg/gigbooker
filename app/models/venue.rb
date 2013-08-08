class Venue < ActiveRecord::Base
  has_one :address
  has_many :gigs
  has_many :bands, through: :gigs

  attr_accessible :name

  validates_presence_of :name

end
