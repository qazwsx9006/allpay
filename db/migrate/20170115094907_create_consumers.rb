class CreateConsumers < ActiveRecord::Migration[5.0]
  def change
    create_table :consumers do |t|
      t.references :order, index: true
      t.string :name
      t.string :phone
      t.string :mobile
      t.string :email
      t.text :payment
      t.text :logistic

      t.timestamps
    end
    add_foreign_key :consumers, :orders
  end
end
