# == Schema Information
#
# Table name: consumers
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  name       :string
#  phone      :string
#  mobile     :string
#  email      :string
#  payment    :text
#  logistic   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_consumers_on_order_id  (order_id)
#

class Consumer < ApplicationRecord
end
