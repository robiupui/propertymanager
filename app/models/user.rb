class User < ActiveRecord::Base
  attr_accessible :email, :password, :username
  
  belongs_to :lease
  has_many :submittedreports, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
end
