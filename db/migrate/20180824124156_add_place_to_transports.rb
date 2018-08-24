class AddPlaceToTransports < ActiveRecord::Migration[5.2]
  def change
    add_reference :transports, :place, foreign_key: true
  end
end
