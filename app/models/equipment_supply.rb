class EquipmentSupply < ActiveRecord::Base
  belongs_to :supply
  belongs_to :equipment
  belongs_to :instrument_type
end
