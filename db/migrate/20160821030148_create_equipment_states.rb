class CreateEquipmentStates < ActiveRecord::Migration
  def change
    create_table :equipment_states do |t|
      t.integer :state
      t.datetime :start_date
      t.datetime :end_date
      t.references :equipment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
