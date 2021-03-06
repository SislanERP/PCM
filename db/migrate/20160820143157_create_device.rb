class CreateDevice < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :serial_number
      t.string :name
      t.string :brand_model
      t.datetime :admission_date
      t.text :description
      t.text :observation
      t.string :potency
      t.string :production_capacity
      t.string :intake
      t.integer :electrical_start, default: 0
      t.integer :electrical_control, default: 0
      t.boolean :electrical_commutator, default: false
      t.boolean :electrical_inverter, default: false
      t.references :provider, index: true, foreign_key: true
      t.references :device_type, index: true, foreign_key: true
      t.references :system, index: true, foreign_key: true
      t.references :device, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
