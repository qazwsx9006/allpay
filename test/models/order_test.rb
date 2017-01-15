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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
