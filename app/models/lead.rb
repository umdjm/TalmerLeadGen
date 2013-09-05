class Lead < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :address, :zip, :phone, :created_at, :latitude, :longitude, :branch, :city, :state, :answers, :source
  has_many :notifications
  serialize :answers, JSON

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed? ||  :zip_changed? || :state_changed? || :city_changed?

  def full_address
  	result = ''
  	result += self.address unless self.address.nil?
  	result += ', ' + self.city unless self.city.nil?
  	result += ', ' + self.state unless self.state.nil?
  	result += ', ' + self.zip unless self.zip.nil?
  	if(result.first(2) == ', ')
  		result = result.from(2)
  	end
  	result
  end

  def answer_list
  	if self.answers.nil?
  		""
  	else
  		self.answers.to_param.gsub("&", ", ").gsub("=", ": ").gsub("+"," ")
  	end
  end
end
