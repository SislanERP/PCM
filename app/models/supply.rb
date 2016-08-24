class Supply < ActiveRecord::Base
  belongs_to :item
  has_many :device_supplies
  has_many :maintenance_supplies
end
