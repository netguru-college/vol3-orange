class ChangeTitleInAttractions < ActiveRecord::Migration[5.2]
  def change
    rename_column :attractions, :title, :name
  end
end
