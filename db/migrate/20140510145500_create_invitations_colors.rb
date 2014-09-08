class CreateInvitationsColors < ActiveRecord::Migration
  def change
    create_table :invitations_colors, :id => false do |t|
     t.references :invitation
     t.references :color
    end
  end
end
