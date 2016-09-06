class Device < ActiveRecord::Base
  belongs_to :provider
  belongs_to :device_type
  belongs_to :device

  belongs_to :system
  has_one :plant, through: :system
  has_one :branch, through: :plant
  has_one :company, through: :branch

  has_many :devices

  has_many :device_supplies
  has_many :supplies, through: :device_supplies
  has_many :instrument_types, through: :device_supplies

  has_many :device_states
  has_many :failures
  has_many :maintenance_plans

  enum electrical_start: {
    'Sin partida': 0,
    Directa: 1,
    'Estrella triángulo': 2,
    Suave: 3,
    'Variador de frecuencia': 4
  }

  enum electrical_control: {
    'Sin control': 0,
    'Interruptor automático': 1,
    Contactor: 2,
    Temporizador: 3,
    'Luz piloto': 4
  }

  def self.devices_by_company(company_id)
    Device.joins(:company).where("companies.id = ?", company_id)
  end

  def instruments
    device_supplies.
    Device.joins(:company).where("companies.id = ?", company_id)
  end

  def state
    "Activo"
  end
end
