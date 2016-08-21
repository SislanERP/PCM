class AddEquipmentToEquipment < ActiveRecord::Migration
  def change
    add_reference :equipment, :equipment, index: true, foreign_key: true
  end
end
