class CreateInvitationsTags < ActiveRecord::Migration
  def change
    create_table :invitations_tags, :id => false do |t|
    t.references :invitation
    t.references :tag
    end
    add_index :invitations_tags, [:invitation_id, :tag_id], :unique => true
  end
end