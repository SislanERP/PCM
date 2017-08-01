class System < ActiveRecord::Base
  belongs_to :plant
  has_many :devices

  def self.all_by_branch(plant)
    System.where(plant: plant)
  end
end
