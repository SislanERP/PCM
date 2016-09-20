class AddIconToTaskType < ActiveRecord::Migration
  def change
    add_column :task_types, :icon, :string
  end
end
