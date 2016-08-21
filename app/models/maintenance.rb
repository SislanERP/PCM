class Maintenance < ActiveRecord::Base
  belongs_to :user
  belongs_to :failure
  belongs_to :provider
  belongs_to :maintenance_plan
  has_many :maintenance_tasks
  has_many :maintenance_supplies

  enum type_provider: [:interno, :externo]
  enum start_equipment_state: [:Activo, :Falla]
  enum end_equipment_state: [:Activo, :Falla]
end
