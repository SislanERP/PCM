class DeviceType < ActiveRecord::Base
  has_many :master_maintenance_plans
  has_many :devices
end
