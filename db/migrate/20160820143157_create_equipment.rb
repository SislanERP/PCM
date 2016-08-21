class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :serial_number
      t.string :name
      t.datetime :admission_date
      t.text :description
      t.string :potency
      t.string :production_capacity
      t.string :intake
      t.string :electrical_start
      t.string :electrical_control
      t.boolean :electrical_commutador
      t.boolean :electrical_inverter
      t.references :provider, index: true, foreign_key: true
      t.references :equipment_type, index: true, foreign_key: true
      t.references :system, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
