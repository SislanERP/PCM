class Maintenance < ActiveRecord::Base
  belongs_to :user
  belongs_to :failure
  belongs_to :provider
  belongs_to :maintenance_plan
  has_many :maintenance_supplies
  has_many :maintenance_tasks

  enum type_provider: {Interno: 0, Externo: 1}
  enum start_device_state: {Activo: 0, Falla: 1}
  #enum end_device_state: {Activo: 0, Falla: 1}
end
