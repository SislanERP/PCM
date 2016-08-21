class CreateEquipmentSupplies < ActiveRecord::Migration
  def change
    create_table :equipment_supplies do |t|
      t.float :cuantity
      t.references :supply, index: true, foreign_key: true
      t.references :equipment, index: true, foreign_key: true
      t.references :instrument_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
