class MasterMaintenancePlan < ActiveRecord::Base
  belongs_to :device_type
  has_many :tasks
  has_many :maintenance_plans

  def self.all_by_device_type(device_type)
    MasterMaintenancePlan.where(device_type: device_type)
  end
end
