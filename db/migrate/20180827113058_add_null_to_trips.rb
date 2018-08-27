class AddNullToTrips < ActiveRecord::Migration[5.2]
  def change
    change_column_null :trips, :name, false
    change_column_null :trips, :start_date, false
    change_column_null :trips, :end_date, false
  end
end
