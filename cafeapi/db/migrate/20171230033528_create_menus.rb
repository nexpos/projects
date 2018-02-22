class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :appetizer
      t.string :entree
      t.string :dessert

      t.timestamps
    end
  end
end
