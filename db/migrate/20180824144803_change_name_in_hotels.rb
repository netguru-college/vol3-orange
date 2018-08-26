class ChangeNameInHotels < ActiveRecord::Migration[5.2]
  def up
    change_column :hotels, :name, :string, null: false
  end

  def down
    change_column :hotels, :name, :string
  end
end
