class Plant < ActiveRecord::Base
  belongs_to :branch
  has_many :systems
end
