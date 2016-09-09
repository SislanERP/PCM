class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :brand_model
      t.string :warehouse_code
      t.string :part_number
      t.float :price
      t.float :stock
      t.string :um
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
