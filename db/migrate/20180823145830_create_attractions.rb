class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.belongs_to :place, index: true
      t.string :title

      t.timestamps
    end
  end
end
