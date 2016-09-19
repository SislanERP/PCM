class AddCompanyToDeviceType < ActiveRecord::Migration
  def change
    add_reference :device_types, :company, index: true, foreign_key: true
  end
end
