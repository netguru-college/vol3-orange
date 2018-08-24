class AddDateToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :start_date, :datetime, null: false
    add_column :attractions, :end_date, :datetime, null: false
  end
end
