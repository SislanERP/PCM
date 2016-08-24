class CreateDeviceStates < ActiveRecord::Migration
  def change
    create_table :device_states do |t|
      t.integer :state
      t.datetime :start_date
      t.datetime :end_date
      t.references :device, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
