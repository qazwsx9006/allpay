class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.text       :cache_product
      t.integer    :price

      t.timestamps
    end
    add_foreign_key :order_items, :orders
    add_foreign_key :order_items, :products
  end
end
