class AddLastNameToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :last_name, :string
    add_column :members, :first_name, :string
    add_column :members, :last_name_kana, :string
    add_column :members, :first_name_kana, :string
    add_column :members, :postal_code, :string
    add_column :members, :address, :text
    add_column :members, :phone_number, :string
    add_column :members, :member_status, :boolean
  end
end
