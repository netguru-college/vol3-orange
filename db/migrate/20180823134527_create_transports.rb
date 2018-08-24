class CreateTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :transports do |t|
      t.string :type_of_transport
      t.string :start_location
      t.string :end_location
      t.float :cost
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
