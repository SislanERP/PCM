class AddPositionToCompanyUser < ActiveRecord::Migration
  def change
    add_column :company_users, :position, :string
  end
end
