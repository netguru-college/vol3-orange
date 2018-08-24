class AddPlaceToHotels < ActiveRecord::Migration[5.2]
  def change
    add_reference :hotels, :place, foreign_key: true
  end
end
