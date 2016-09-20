class Device < ActiveRecord::Base
  belongs_to :provider
  belongs_to :device_type

  belongs_to :device
  has_many :devices, dependent: :destroy

  belongs_to :system
  has_one :plant, through: :system
  has_one :branch, through: :plant
  has_one :company, through: :branch

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

  def self.all_by_company(company_id)
    Device.joins(:company).where("companies.slug = ?", company_id)
  end

  def self.all_by_device_type(device_type)
    Device.where(device_type: device_type)
  end

  def supplies
    device_supplies.includes(:supply).where(lubrication: false, instrument_type_id: nil)
  end

  def lubricants
    device_supplies.includes(:supply).where(lubrication: true)
  end

  def instruments
    device_supplies.includes(:instrument_type, :supply).where.not(instrument_type_id: nil)
  end

  def other_devices_of_system
    system.devices.where.not(id: id)
  end

  def state
    "Activo"
  end
end
