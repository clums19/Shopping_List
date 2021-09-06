class CreateNewLists < ActiveRecord::Migration[6.1]
  def change
    create_table :new_lists do |t|
      t.string :title
      t.string :item
      t.string :complete

      t.timestamps
    end
  end
end
