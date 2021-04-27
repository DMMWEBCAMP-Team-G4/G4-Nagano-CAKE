class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :is_active
      t.text :image_id

      t.timestamps
    end
  end
end
