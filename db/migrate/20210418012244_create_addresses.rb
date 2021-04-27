class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :member_id
      t.string :shipping_postal_code
      t.text :shipping_address
      t.string :receiver

      t.timestamps
    end
  end
end
