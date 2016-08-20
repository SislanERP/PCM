class EquipmentType < ActiveRecord::Base
  has_many :master_maintenance_plans
end
