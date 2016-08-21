class AddElectricalstartToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :electrical_start, :integer
  end
end
