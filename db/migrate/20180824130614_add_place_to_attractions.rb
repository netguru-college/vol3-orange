class AddPlaceToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_reference :attractions, :place, foreign_key: true
  end
end
