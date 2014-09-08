class AddPhotosToInvitations < ActiveRecord::Migration
    def self.up
    add_attachment :invitations, :photo
  end

  def self.down
    remove_attachment :invitations, :photo
  end
end
