class RemoveElectricalcontrolToEquipment < ActiveRecord::Migration
  def change
    remove_column :equipment, :electrical_control, :string
  end
end
