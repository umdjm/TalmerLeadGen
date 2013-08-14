class Lead < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :created_at
end
