class CreateMaintenanceSupplies < ActiveRecord::Migration
  def change
    create_table :maintenance_supplies do |t|
      t.float :quantity
      t.references :maintenance, index: true, foreign_key: true
      t.references :supply, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
