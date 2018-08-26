class AddNameInAttractions < ActiveRecord::Migration[5.2]
  def up
    change_column :attractions, :name, :string, null: false
  end

  def down
    change_column :attractions, :title, :string
  end
end
