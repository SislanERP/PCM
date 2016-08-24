class AddSequenceToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :sequence, :integer
  end
end
