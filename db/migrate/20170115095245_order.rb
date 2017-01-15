class Order < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :payment_callback, :text
    add_column :orders, :logistic_callback, :text
  end
end
