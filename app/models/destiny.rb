class Destiny < ApplicationRecord
  has_many :users, :through => :bookings


  validates_presence_of :url
  validates_uniqueness_of :url
  validates_presence_of :city
  validates_uniqueness_of :city
  validates_presence_of :country
  validates_uniqueness_of :country
  validates_presence_of :family
  validates_uniqueness_of :family
  validates_presence_of :description
  validates_uniqueness_of :description
end
