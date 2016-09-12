class DeviceType < ActiveRecord::Base
  has_many :master_maintenance_plans

  has_many :devices
  has_one :system, through: :devices
  has_one :plant, through: :system
  has_one :branch, through: :plant
  has_one :company, through: :branch

  def self.all_by_company(company_id)
    DeviceType.joins(:company).where("companies.slug = ?", company_id)
  end
end
