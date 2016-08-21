class CreateInstrumentTypes < ActiveRecord::Migration
  def change
    create_table :instrument_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
