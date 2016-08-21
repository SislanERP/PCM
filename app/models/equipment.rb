class Equipment < ActiveRecord::Base
  belongs_to :provider
  belongs_to :equipment_type
  belongs_to :system
  belongs_to :equipment
  has_many :equipments
  has_many :equipment_supplies
  has_many :equipment_states
  has_many :failures
  has_many :maintenance_plans

  enum electrical_start: [:Directa, :"Estrella triángulo", :Suave, :"Variador de frecuencia"]
  enum electrical_control: [:"Interruptor automático", :Contactor, :Temporizador, :"Luz piloto"]
end
