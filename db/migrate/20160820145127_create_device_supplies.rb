class CreateDeviceSupplies < ActiveRecord::Migration
  def change
    create_table :device_supplies do |t|
      t.float :cuantity
      t.boolean :lubrication, default: false
      t.references :supply, index: true, foreign_key: true
      t.references :device, index: true, foreign_key: true
      t.references :instrument_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
