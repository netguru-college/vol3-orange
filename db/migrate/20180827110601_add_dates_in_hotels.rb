class AddDatesInHotels < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :start_time, :datetime, null:false
    add_column :hotels, :end_time, :datetime, null:false
    change_column_null :hotels, :name, false
  end
end
