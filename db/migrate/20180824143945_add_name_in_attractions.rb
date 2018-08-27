class AddNameInAttractions < ActiveRecord::Migration[5.2]
  def change
    rename_column :attractions, :title, :name
    change_column :attractions,:name, :string, null: false
  end
end
