class CreateInvitationsElements < ActiveRecord::Migration
  def change
    create_table :invitations_elements do |t|
    	t.references :invitation
    	t.references :element
    end
    	add_index :invitations_elements, [:invitation_id, :element_id], :unique => true
  end
end
