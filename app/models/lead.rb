class Lead < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :address, :zip, :phone, :created_at, :latitude, :longitude, :branch
  has_many :notifications

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
