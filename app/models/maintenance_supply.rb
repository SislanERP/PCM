class MaintenanceSupply < ActiveRecord::Base
  belongs_to :maintenance
  belongs_to :supply
end
