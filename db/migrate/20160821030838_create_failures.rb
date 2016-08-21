class CreateFailures < ActiveRecord::Migration
  def change
    create_table :failures do |t|
      t.text :description
      t.datetime :date
      t.references :failure_type, index: true, foreign_key: true
      t.references :equipment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
