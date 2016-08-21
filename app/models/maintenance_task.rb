class MaintenanceTask < ActiveRecord::Base
  belongs_to :maintenance
  belongs_to :task
end
