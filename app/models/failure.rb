class Failure < ActiveRecord::Base
  belongs_to :failure_type
  belongs_to :equipment
  has_many :maintenances
end
