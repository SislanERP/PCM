class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :type_provider
      t.datetime :start_date
      t.datetime :end_date
      t.integer :start_device_state
      t.integer :end_device_state
      t.text :observation
      t.references :user, index: true, foreign_key: true
      t.references :failure, index: true, foreign_key: true
      t.references :provider, index: true, foreign_key: true
      t.references :maintenance_plan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
