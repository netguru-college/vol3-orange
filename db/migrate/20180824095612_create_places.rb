class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :country
    end
  end
end
