class MasterMaintenancePlan < ActiveRecord::Base
  belongs_to :device_type
  has_one :company, through: :device_type

  has_many :tasks, dependent: :destroy
  has_many :maintenance_plans

  validates :device_type_id, presence: true

  def self.all_by_company(company_id)
    Device.joins(:company).where("companies.slug = ?", company_id)
  end

  def self.all_by_device_type(device_type)
    MasterMaintenancePlan.where(device_type: device_type)
  end

  def tasks_include_task_type
    tasks.includes(:task_type)
  end
end
