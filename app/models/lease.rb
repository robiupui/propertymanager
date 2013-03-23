class Lease < ActiveRecord::Base
  attr_accessible :end_date, :rent, :start_date, :unit_id, :renter_ids
  
  belongs_to :unit
  has_many :renters, :class_name => 'User'
  has_many :payments
end
