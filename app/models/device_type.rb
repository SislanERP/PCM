class DeviceType < ActiveRecord::Base
  has_many :master_maintenance_plans
  belongs_to :company

  has_many :devices
  has_one :system, through: :devices
  has_one :plant, through: :system
  has_one :branch, through: :plant

  validates :company_id, presence: true
  before_destroy :check_for_devices

  def self.all_by_company(company_id)
    DeviceType.joins(:company).where("companies.slug = ?", company_id).uniq
  end

  def check_for_devices
    if devices.any?
      errors[:base] << I18n.t('cannot_delete_device_type_that_are_already_associated_devices')
      return false
    end
  end

end
