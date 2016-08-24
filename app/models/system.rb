class System < ActiveRecord::Base
  belongs_to :plant
  has_many :devices
end
