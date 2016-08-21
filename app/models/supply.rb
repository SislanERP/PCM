class Supply < ActiveRecord::Base
  belongs_to :item
  has_many :equipment_supplies
  has_many :maintenance_supplies
end
