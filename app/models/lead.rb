class Lead < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :address, :zip, :phone, :created_at
  has_many :notifications
end
