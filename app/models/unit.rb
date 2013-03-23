class Unit < ActiveRecord::Base
  attr_accessible :name, :square_feet, :property_id
  
  belongs_to :property
  has_many :leases
  
    def full_title
    "#{name}: #{property.name}"
  end
  
end
