class Failure < ActiveRecord::Base
  belongs_to :failure_type
  belongs_to :device
  has_many :maintenances
end
