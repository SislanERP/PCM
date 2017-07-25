class System < ActiveRecord::Base
  belongs_to :plant
  has_many :devices

  def self.all_by_company(company_id)
    System.joins(:company).where("companies.slug = ?", company_id)
  end
end
