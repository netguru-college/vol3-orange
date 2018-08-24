class CreateUserTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :user_trips do |t|
      t.belongs_to :user, index: true
      t.belongs_to :trip, index: true

      t.timestamps
    end
  end
end
