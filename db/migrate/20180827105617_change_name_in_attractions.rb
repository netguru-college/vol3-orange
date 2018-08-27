class ChangeNameInAttractions < ActiveRecord::Migration[5.2]
  def change
    change_column_null :attractions, :name, false
  end
end
