class CreateTripUser < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_users do |t|
      t.integer :trip_id
      t.integer :user_id
      t.string :role
    end
  end
end
