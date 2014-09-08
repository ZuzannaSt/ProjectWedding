class AddIndexInvitationsColors < ActiveRecord::Migration
  def change
    add_index :invitations_colors, [:invitation_id, :color_id], :unique => true
  end
end
