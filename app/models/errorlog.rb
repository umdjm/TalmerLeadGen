class Errorlog < ActiveRecord::Base
  attr_accessible :errormessage, :leaddata, :url
end
