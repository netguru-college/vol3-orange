class AddTripToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :trip, foreign_key: true
  end
end
