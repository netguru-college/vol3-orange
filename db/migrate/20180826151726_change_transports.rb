class ChangeTransports < ActiveRecord::Migration[5.2]
  def up
    change_column :transports, :type_of_transport, :string, null: false
    remove_column :transports,:end_location, :string
    change_column :transports, :start_time, :datetime, null: false
    change_column :transports, :end_time, :datetime, null: false
  end

  def down
    change_column :transports, :type_of_transport, :string
    add_column :transports, :end_location, :string
    change_column :transports, :end_time, :datetime
  end
end
