class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :rut
      t.string :company_name
      t.string :fantasy_name
      t.string :address
      t.string :email
      t.string :url

      t.timestamps null: false
    end
  end
end
