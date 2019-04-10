class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :item_name
      t.integer :price
      t.string :category
      t.boolean :is_available

      t.timestamps
    end
  end
end
