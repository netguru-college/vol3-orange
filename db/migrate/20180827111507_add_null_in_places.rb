class AddNullInPlaces < ActiveRecord::Migration[5.2]
  def change
    change_column_null :places, :name, false
    change_column_null :places, :start_date, false
    change_column_null :places, :end_date, false
  end
end
