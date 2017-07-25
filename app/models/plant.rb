class Plant < ActiveRecord::Base
  belongs_to :branch
  has_many :systems

  def self.all_by_company(company_id)
    Plant.joins(:company).where("companies.slug = ?", company_id)
  end
end
