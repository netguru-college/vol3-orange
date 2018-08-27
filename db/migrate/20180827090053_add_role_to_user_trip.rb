class AddRoleToUserTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :user_trips, :role, :string
  end
end
