class AddMakingStatusToOrderProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :order_products, :making_status, :integer, default: 0
  end
end
