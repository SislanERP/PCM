class Role < ActiveRecord::Base
  has_many :company_users
end
