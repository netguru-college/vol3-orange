class DropDaysTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :days do |t|
      t.integer :number
      t.datetime :date
    end
  end
end
