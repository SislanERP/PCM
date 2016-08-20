class CreateEquipmentTypes < ActiveRecord::Migration
  def change
    create_table :equipment_types do |t|
      t.string :brand_model
      t.text :description

      t.timestamps null: false
    end
  end
end
