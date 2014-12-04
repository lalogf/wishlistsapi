class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :name
      t.text :url
      t.integer :price
      t.string :brand

      t.timestamps
    end
  end
end
