class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :member_id
      t.string :shipping_postal_code
      t.text :shipping_address
      t.integer :method_of_payment
      t.integer :total_fee
      t.integer :shipping_fee
      t.integer :status
      t.string :receiver

      t.timestamps
    end
  end
end
