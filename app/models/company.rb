class Company < ActiveRecord::Base
  has_many :company_users, dependent: :destroy
  has_many :users, through: :company_users
end
