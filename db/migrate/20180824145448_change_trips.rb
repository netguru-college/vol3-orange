class ChangeTrips < ActiveRecord::Migration[5.2]
  def up
    change_column :trips, :name, :string, null: false
    change_column :trips, :start_date, :datetime, null: false
    change_column :trips, :end_date, :datetime, null: false
  end

  def down
    change_column :trips, :name, :string
    change_column :trips, :start_date, :datetime
    change_column :trips, :end_date, :datetime
  end
end
