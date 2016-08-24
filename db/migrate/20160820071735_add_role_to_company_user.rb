class AddRoleToCompanyUser < ActiveRecord::Migration
  def change
    add_reference :company_users, :role, index: true, foreign_key: true
  end
end
