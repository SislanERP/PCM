class System < ActiveRecord::Base
  belongs_to :plant
  has_many :equipments
end
