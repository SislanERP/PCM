class InstrumentType < ActiveRecord::Base
  has_many :device_supplies
end
