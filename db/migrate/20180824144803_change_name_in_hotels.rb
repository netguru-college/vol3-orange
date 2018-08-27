class ChangeNameInHotels < ActiveRecord::Migration[5.2]
  def change
    change_column :hotels, :name, :string, null: false
    add_column :hotels, :start_time, :datetime, null: false
    add_column :hotels, :end_time, :datetime, null: false
  end
end
