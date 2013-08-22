class Branch < ActiveRecord::Base
  attr_accessible :location, :latitud, :longitude

  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end
