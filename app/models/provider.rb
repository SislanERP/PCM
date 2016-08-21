class Provider < ActiveRecord::Base
  has_many :equipments
  has_many :maintenances
end
