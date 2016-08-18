class Company < ActiveRecord::Base
  has_many :company_users, dependent: :destroy
  has_many :users, through: :company_users

  scope :filter_by_user, ->(user) { Company.joins(:company_users).where("company_users.users": user).order(:id)  }

end
