class CreateMaintenanceTasks < ActiveRecord::Migration
  def change
    create_table :maintenance_tasks do |t|
      t.text :observation
      t.boolean :accomplished
      t.datetime :accomplished_date
      t.references :maintenance, index: true, foreign_key: true
      t.references :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
