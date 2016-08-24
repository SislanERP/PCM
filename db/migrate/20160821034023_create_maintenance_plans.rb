class CreateMaintenancePlans < ActiveRecord::Migration
  def change
    create_table :maintenance_plans do |t|
      t.datetime :last_execution
      t.integer :frecuency
      t.text :specification
      t.references :device, index: true, foreign_key: true
      t.references :master_maintenance_plan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
