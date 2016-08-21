class EquipmentState < ActiveRecord::Base
  belongs_to :equipment

  enum state: [:Activo, :Falla]
end
