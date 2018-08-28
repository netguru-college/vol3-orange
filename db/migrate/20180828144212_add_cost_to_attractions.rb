class AddCostToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :cost, :float
  end
end
