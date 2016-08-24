class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.references :task_type, index: true, foreign_key: true
      t.references :master_maintenance_plan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
