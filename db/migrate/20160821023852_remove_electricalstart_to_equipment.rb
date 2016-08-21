class RemoveElectricalstartToEquipment < ActiveRecord::Migration
  def change
    remove_column :equipment, :electrical_start, :string
  end
end
