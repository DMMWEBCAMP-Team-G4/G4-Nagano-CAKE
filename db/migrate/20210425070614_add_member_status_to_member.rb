class AddMemberStatusToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :member_status, :boolean, default:false
  end
end
