class EquipmentType < ActiveRecord::Base
  has_many :master_maintenance_plans
  has_many :equipments
end
