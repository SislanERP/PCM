class CreateFailureTypes < ActiveRecord::Migration
  def change
    create_table :failure_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
