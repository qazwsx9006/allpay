# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  order_number      :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  payment_callback  :text
#  logistic_callback :text
#
# Indexes
#
#  index_orders_on_order_number  (order_number) UNIQUE
#

class Order < ApplicationRecord
  has_many :order_items
  after_initialize :set_order_number
  serialize :payment_callback
  serialize :logistic_callback

  private
  def set_order_number
    self.order_number = "myAllpay#{SecureRandom.hex(4)}"
  end
end
