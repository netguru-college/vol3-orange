class ChangeTrips < ActiveRecord::Migration[5.2]
  def up
    change_column :trips, :name, :string, null: false
    change_column :trips, :start_date, :datetime, null: false
    change_column :trips, :end_date, :datetime, null: false
  end
end
