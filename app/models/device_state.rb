class DeviceState < ActiveRecord::Base
  belongs_to :device

  enum state: {Activo: 0, Falla: 1}
end
