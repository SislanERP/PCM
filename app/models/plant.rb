class Plant < ActiveRecord::Base
  belongs_to :branch
  has_many :systems

  def self.all_by_branch(branch)
    Plant.where(branch: branch)
  end
end
