class CreateMasterMaintenancePlans < ActiveRecord::Migration
  def change
    create_table :master_maintenance_plans do |t|
      t.boolean :lubrication
      t.string :subject
      t.text :description
      t.integer :frecuency
      t.references :device_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
