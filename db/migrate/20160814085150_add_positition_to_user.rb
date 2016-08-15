class AddPosititionToUser < ActiveRecord::Migration
  def change
    add_reference :users, :position, index: true, foreign_key: true
  end
end
