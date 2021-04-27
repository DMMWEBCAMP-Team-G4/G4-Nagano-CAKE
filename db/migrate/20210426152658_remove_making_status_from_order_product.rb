class RemoveMakingStatusFromOrderProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_products, :making_status, :integer
  end
end
