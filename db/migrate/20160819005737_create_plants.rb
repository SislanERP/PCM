class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.references :branch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
