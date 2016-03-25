# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  customer_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  order_status :integer
#

class Order < ActiveRecord::Base

  module Status
    PROCESSING = 1
    READY_FOR_DELIVERY = 2
    DISPATCHED = 3
    DELIVERED = 4
  end
  belongs_to :customer

  has_many :items, class_name: OrderItem.name
end
