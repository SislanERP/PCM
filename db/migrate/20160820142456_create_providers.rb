class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :rut
      t.string :company_name
      t.string :address
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.string :contact_position
      t.text :observation

      t.timestamps null: false
    end
  end
end
