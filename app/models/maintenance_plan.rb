class MaintenancePlan < ActiveRecord::Base
  belongs_to :device
  belongs_to :master_maintenance_plan
  has_many :maintenances
end
