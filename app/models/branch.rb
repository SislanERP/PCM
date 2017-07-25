class Branch < ActiveRecord::Base
  belongs_to :company
  has_many :plants

  def self.all_by_company(company_id)
    Branch.joins(:company).where("companies.slug = ?", company_id)
  end
end
