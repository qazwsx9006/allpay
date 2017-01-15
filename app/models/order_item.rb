# == Schema Information
#
# Table name: order_items
#
#  id            :integer          not null, primary key
#  order_id      :integer
#  product_id    :integer
#  cache_product :text
#  price         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_order_items_on_order_id    (order_id)
#  index_order_items_on_product_id  (product_id)
#

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  serialize :cache_product
  before_save :product_cache

  def product_info
    Product.new(self.cache_product)
  end

  private
  def product_cache
    return if !self.product_id.changed?
    self.cache_product = self.product.attributes
  end

end
