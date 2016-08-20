class MasterMaintenancePlan < ActiveRecord::Base
  belongs_to :equipment_type
  has_many :tasks
end
