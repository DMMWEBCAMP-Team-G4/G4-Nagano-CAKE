class RemoveMemberStatusFromMember < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :member_status, :boolean
  end
end
