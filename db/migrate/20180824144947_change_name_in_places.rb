class ChangeNameInPlaces < ActiveRecord::Migration[5.2]
  def up
    change_column :places, :name, :string, null: false
    change_column :places, :start_date, :datetime, null: false
    change_column :places, :end_date, :datetime, null: false
  end

  def down
    change_column :places, :name, :string
    change_column :places, :start_date, :datetime
    change_column :places, :end_date, :datetime
  end
end
