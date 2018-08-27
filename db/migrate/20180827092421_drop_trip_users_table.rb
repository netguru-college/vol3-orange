class DropTripUsersTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :trip_users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
