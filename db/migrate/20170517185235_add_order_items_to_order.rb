class AddOrderItemsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order_items, :string
  end
end
