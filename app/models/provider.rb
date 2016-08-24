class Provider < ActiveRecord::Base
  has_many :devices
  has_many :maintenances
end
