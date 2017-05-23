class Task < ActiveRecord::Base
  belongs_to :task_type
  belongs_to :master_maintenance_plan
  has_many :maintenance_tasks

  validates :master_maintenance_plan_id, presence: true
  validates :task_type_id, presence: true



end
