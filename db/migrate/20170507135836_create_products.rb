class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.integer :quantity
      t.decimal :price
      t.text :description
      t.integer :rating
      t.integer :category_id

      t.timestamps
    end
  end
end
