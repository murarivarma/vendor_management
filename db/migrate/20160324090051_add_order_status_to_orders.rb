class AddOrderStatusToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_status, :integer, default: Order::Status::PROCESSING
  end
end
