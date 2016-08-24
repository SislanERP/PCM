class Task < ActiveRecord::Base
  belongs_to :task_type
  belongs_to :master_maintenance_plan
  has_many :maintenance_tasks
end
