class MasterMaintenancePlan < ActiveRecord::Base
  belongs_to :device_type
  has_many :tasks
  has_many :maintenance_plans
end
