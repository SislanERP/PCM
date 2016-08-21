class AddElectricalcontrolToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :electrical_control, :integer
  end
end
