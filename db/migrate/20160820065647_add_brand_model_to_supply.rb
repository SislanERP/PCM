class AddBrandModelToSupply < ActiveRecord::Migration
  def change
    add_column :supplies, :brand_model, :string
  end
end
