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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
