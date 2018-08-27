class AddNullInTransports < ActiveRecord::Migration[5.2]
  def change
    change_column_null :transports, :type_of_transport, false
    change_column_null :transports, :start_time, false
    change_column_null :transports, :end_time, false
    remove_column :transports, :end_location, :string
  end
end
