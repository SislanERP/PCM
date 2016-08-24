class DeviceSupply < ActiveRecord::Base
  belongs_to :supply
  belongs_to :device
  belongs_to :instrument_type
end
