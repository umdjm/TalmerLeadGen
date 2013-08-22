class Notification < ActiveRecord::Base
  attr_accessible :created_at, :status, :recipients
  belongs_to :lead
end
