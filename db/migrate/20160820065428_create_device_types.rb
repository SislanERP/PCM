class CreateDeviceTypes < ActiveRecord::Migration
  def change
    create_table :device_types do |t|
      t.string :name
      t.string :brand_model
      t.text :description

      t.timestamps null: false
    end
  end
end
