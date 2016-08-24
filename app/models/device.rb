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
  has_many :device_states
  has_many :failures
  has_many :maintenance_plans

  enum electrical_start: {Directa: 0,
                          'Estrella triángulo': 1,
                          Suave: 2,
                          'Variador de frecuencia': 3}

  enum electrical_control: {'Interruptor automático': 0,
                            Contactor: 1,
                            Temporizador: 2,
                            'Luz piloto': 3}

  def self.devices_by_company(company_id)
    Device.joins(:company).where("companies.id = ?", company_id)
  end

  def state
    "Activo"
  end
end
